import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart'
    as shelf_io;
import 'package:shelf_static/shelf_static.dart';

// Middlewares

// logging Middleware rep el manipulador innerHandler
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

// Handlers

// Handler que retorna un "Hola Món per a qualsevol petició"
Response handler(Request request) {
  return Response.ok('Hola Món!');
}

var staticHandler = createStaticHandler(
  'public',
  defaultDocument: 'index.html',
);

// Pipelines
void main() async {
  var pipeline = Pipeline()
      .addMiddleware(loggingMiddleware)
      .addHandler(staticHandler);

  // Servidor

  // Servim en localhost:8080
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
