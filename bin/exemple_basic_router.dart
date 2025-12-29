import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart'
    as shelf_io;
import 'package:shelf_router/shelf_router.dart';

// Middlewares

Middleware
// ignore: prefer_function_declarations_over_variables
loggingMiddleware = (Handler innerHandler) {
  // Retorna una funció (altre manipulador)...
  return (Request request) {
    // que imprimeix un missatge...
    print(
      'Petició ${request.method} ${request.requestedUri}',
    );

    // Exemple per accedir als paràmetres de la query
    final queryParams =
        request.url.queryParameters;
    queryParams.forEach((key, value) {
      print("Paràmetre $key=$value");
    });

    // Exemple per accedir als paràmetres enviats al body
    // en peticions POST
    if (request.method == 'POST') {
      request.readAsString().then((
        String params,
      ) {
        Map<String, dynamic>? body;
        body = jsonDecode(params);
        body?.forEach((key, value) {
          print(
            "Paràmetre POST $key=$value",
          );
        });
      });
    }

    // Retornem el resultat del manipulador que li hem proporcionat
    return innerHandler(request);
  };
};

// Router
final router = Router()
  ..get(
    '/hola',
    (Request request) =>
        Response.ok('Hola Món!!'),
  )
  ..post(
    '/post',
    (Request request) => Response.ok(
      'Petició post rebuda',
    ),
  );

void main(List<String> args) async {
  var pipeline = Pipeline()
      .addMiddleware(loggingMiddleware)
      .addHandler(router);

  final server = await shelf_io.serve(
    //handler
    pipeline,
    InternetAddress.anyIPv4,
    8080,
  );

  print(
    'Servidor escoltant pel port ${server.port}',
  );
}
