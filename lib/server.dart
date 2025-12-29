import 'dart:io';

import 'package:healthys_backend/http/controllers/begudes_controller.dart';
import 'package:healthys_backend/http/controllers/entrants_controller.dart';
import 'package:healthys_backend/http/controllers/principals_controller.dart';
import 'package:healthys_backend/http/routes/api_router.dart';
import 'package:healthys_backend/infrastructure/di.dart';
import 'package:healthys_backend/infrastructure/inMemory/repositories/in_memory_repository.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart'
    as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

Middleware errorMiddleware() {
  return (inner) => (request) async {
    try {
      return await inner(request);
    } catch (e, st) {
      stderr.writeln('ERROR: $e\n$st');
      return Response.internalServerError(
        body:
            '{"error":"Internal Server Error"}',
        headers: {
          'Content-Type':
              'application/json',
        },
      );
    }
  };
}

Future<void> startServer(
  int port,
) async {
  // 1) Handler per servir recursos estàtics
  final staticHandler =
      createStaticHandler(
        'public', // carpeta al projecte
        defaultDocument: 'index.html',
      );

  // Injecció de dependències

  // Repositori concret de la carta, per injectar-lo al router
  final cartaRepository =
      InMemoryRepository();

  // Injectem el repositori al mòdul d'injecció de dependències
  DependencyInjection.instance
      .setRepository(cartaRepository);

  // Creem els controladors corresponents

  final ec = EntrantsController(
    DependencyInjection.instance
        .entrantsUseCases(),
  );
  final pc = PrincipalsController(
    DependencyInjection.instance
        .principalsUseCases(),
  );
  final bc = BegudesController(
    DependencyInjection.instance
        .begudesUseCases(),
  );

  // 2) Router per a l'API (redirigeix al router de l'API la ruta /api)
  final Router apiRoutes =
      buildApiRouter(ec, pc, bc);

  // 3) Creem el handler principal com un Cascade, que serà
  //    l'últim en el Pipeline.
  //    Amb Cascade definim una sèrie de middlewares i handlers que gestionaran
  //    les rutes en funció de la petició.

  final rootHandler = Cascade()
      .add(
        staticHandler, // Primer servim els fitxers estàtics
      )
      .add(
        apiRoutes
            .call, // I després provem l'API
      )
      .handler; // Obtenim el handler del Cascade

  // Definim el Pipleline, primer proporcionant els middlewares
  // i després el Handler principal.
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(errorMiddleware())
      .addHandler(rootHandler);

  // I passem aquest pipeline per servir
  final server = await io.serve(
    handler,
    InternetAddress.anyIPv4,
    port,
  );
  print(
    'Serving at http://${server.address.host}:${server.port}',
  );
}
