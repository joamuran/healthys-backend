## Què és shelf?

> [!NOTE]
> **Article base**
> https://dartcodelabs.com/introduction-to-darts-shelf-package-lightweight-backend-development/

Existeixen diverses llibreríes per crear backends a Dart. Shelf és una d'elles, i es caracteritza per ser un framework potent, modular i minimalista, dissenyat per simplificar el procés de creació de serveis web i APIs, i amb una forma de funcionar semblant a ExpressJS.

Els tres conceptes sobre els què es fonamenta Shelf són: Handlers, Middlewares i Pipelines. 

* Els **Handlers** serien l'equivalent als controladors d'Express: funcions que processen les sol·licituds HTTP entrants i generen respostes. 
* Els **Middlewares** permeten manipular les sol·licituds i respostes en diferents etapes del processament (autenticació, generació de logs, etc.)
* Els **Pipelines (tuberíes)** uneixen els Handlers i Middlewares, i permeten un flux de dades fluid a través de diferents capes de l'aplicació.

## Incorporar la llibreria shelf

Per treballar amb el frameworks shelf, l'hem d'afegir com a llibreria al projecte, bé editant el `pubspec.yaml` o afegint-la amb `dart pub`. A més, també ens seran d'utilitat `shelf-router` i `shelf_static`.

```bash
dart pub add shelf shelf_router shelf_static 
```

El funcionament bàsic de Shelf per retornar un "Hola Món" per a qualsevol petició seria:

```dart
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart'
    as shelf_io;

void main() async {
  // Handler que retorna un "Hola Món per a qualsevol petició"
  Response handler(Request request) {
    return Response.ok('Hola Món!');
  }

  // Servim en localhost:8080
  final server = await shelf_io.serve(
    handler,
    'localhost',
    8080,
  );

  print(
    'Servidor escoltant pel port ${server.port}',
  );
}

```

Per executar el servidor farem:

```bash
dart run bin/exemple_basic_1.dart
```

Ara si accedim a `http://localhost:8080` bé des del navegador o amb `curl`, obtindrem el missatge.

## Aprofindint en els conceltes de Shelf

Ja hem introduit els *Handlers*, *Middlewares* i *Pipelines*. Aprofundim en ells una miqueta i introduim alguns conceptes nous.

### Handlers (Manipulador)

Són funcions que reben una petició HTTP (*Request*) i retornen una resposta (*Response*). La seua responsabilitat principal és processar les sol·licituds entrants i generar les respostes adequades.

Per exemple:

```dart
Response handler(Request request) {
    return Response.ok('Hola Món!');
  }
```

Els manipuladors poden usar-se pe a moltes coses, des de servir fitxers estàtics fins processar lògica més complexa.

#### Manipulador per servir pàgines estàtiques

Per crear un manipulador per a fitxers estàtics farem ús de la funció *createStaticHandler* definida a la llibreria `shelf_static`.

```dart
var staticHandler =
    createStaticHandler(
      'public',
      defaultDocument: 'index.html',
    );

// Servim en localhost:8080
final server = await shelf_io.serve(
  //handler,
  staticHandler,
  'localhost',
  8080,
);
```

Com veiem, la funció `createStaticHandler` rep dos arguments:

* Un primer, **posicional i obligatori**, amb el nom del directori que se servirà públicament (`public`).
* Un segon, opcional i amb nom, que indica quin serà el recurs que se servirà de manera predeterminada.

Podem consultar la resta de paràmetres d'aquesta funció bé en la documentació incorporada, situant-nos damunt o bé a [la documentació en línia de la llibreria](https://pub.dev/documentation/shelf_static/latest/shelf_static/createStaticHandler.html).

> [!NOTE] **Sobre localhost i 127.0.0.1**
> 
> Si accedim al servidor a través de `localhost` no tindrem problemes, però si intentem accedir a través de `127.0.0.1`, veurem que no és possible.
>
> Això es deu a què estem indicant explícitament `localhost` en la funció `serve`. 
>
> Una opció més versàtil és fer ús de la propietat `anyIPv4` de la interfície `InternetAddress`, que respondrà a qualsevol adreça IP de la nostra màquina:
> 
> ```dart
>  // Servim en localhost:8080
>  final server = await shelf_io.serve(
>    staticHandler,
>    InternetAddress.anyIPv4,
>    8080,
>  );
> ```


### Middlewares 

Són funcions que permeten encapsular controladors per afegir funcionalitats addicionals, com el logging, l'autenticació o la gestió d'errors.

Aquestes funcions reben un controlador com a entrada, i retornen un nou controlador, amb el comportament addicional.

Per exemple, un middleware de registre senzill seria:

```dart
// logging Middleware rep el manipulador innerHandler
final Middleware loggingMiddleware = (Handler innerHandler) {
  // Retorna una funció (altre manipulador)...
  return (Request request) {
    // que imprimeix un missatge...
    print('Request for ${request.requestedUri}');
    // ...i retorna el manipulador que li hem proporcionat
    return innerHandler(request);
  };
};
```

Com veiem, actúa com a un *envoltori* del manipulador que li proporcionem.

Cal dir que els middlewares es poden apilar, de manera que cada middleware modifique la sol·licitud o la resposta segons siga necessari.

> [!NOTE] **Reescriptura com a funció**
> 
> Amb la sintaxi anterior, VSCode ens donarà una advertència, indicant que podem reescriure l'assignació com a funció. El resultat seria:
> ```dart
>  Middleware loggingMiddleware() {
>  return (Handler innerHandler) {
>    return (Request request) async {
>      print('Petició ${request.method} ${request.requestedUri}');
>      return await innerHandler(request);
>    };
>  };
>  }
> ```
>
> Com veiem, el codi és bastant més il·legible, pel que, per claredat **anem a ignorar aquesta recomanació de l'editor, i deixar el codi amb l'assignació anterior.**
>

### Pipelines (Canonades)

Les canonades anes ajuden a organitzar el flux de sol·licituds a través de diversos *middlewares* abans d'arribar al controlador final, i són útils per donar una estructura clara i mantenible a l'aplicació.

Veiem un exemple molt bàsic:

```dart
var pipeline = Pipeline()
    .addMiddleware(loggingMiddleware)
    .addHandler(staticHandler);
```

Com veiem, fem ús dels mètode `addMiddleware` i `addHandler` per afegir respectivament middlewares i handlers a la canonada.

En aquest exemple concret, definim una canonada on cada sol·licitud ha de passar pel middleware `loggingMiddleware` abans de ser manipulada per `staticHandler`.

### Objectes Request i Response

Els objectes de tipus `Request` representen una petició, i contenen tota la informació sobre la sol·licitud (headers, body, URL...). 

Quan accedim a `request.method` o `request.requestedUri` estem accedint a estes propietats.

A partir de la petició també podriem accedir als paràmetres enviats en la mateixa consulta, amb `url.queryParameters`. Per exemple, si redefinim el middleware dels logs amb:

```dart
loggingMiddleware = (Handler innerHandler) {
    // Retorna una funció (altre manipulador)...
    return (Request request) {
      // que imprimeix un missatge...
      print(
        'Petició ${request.method} ${request.requestedUri}',
      );

      final queryParams =
          request.url.queryParameters;
      queryParams.forEach((key, value) {
        print("Paràmetre $key=$value");
      });

      // ...i retorna el resultat del manipulador que li hem proporcionat
      return innerHandler(request);
    };
  };
```

Podem fer peticions com `curl "127.0.0.1:8080?a=1&b=2&c=3" i veure com es mostren els paràmetres enviats per pantalla.

Si ara volguérem accedir als valors enviats en el *body* d'una petició POST, podriem fer-ho amb `request.read()` que ens retorna un *Stream* o millor amb `request.readAsString()`, que ens retorna directament un String. Per exemple, per veure si es tracta d'una petició POST i si és així mostrar els paràmetres enviats, podriem fer:

```dart
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
```

Finalment, per accedir a paràmetres de ruta (tipus `/api/ruta/{id}`) ho farem a través dels routers, com veurem després.

Per la seua banda, els `Response` representen les respostes HTTP enviades al client. Per treballar amb ella, no ho fem directament, sinò amb mètodes específicament dissenyats per a això (el més habitual serà `Response.ok(...)`)

Per exemple, si en algun moment volguèrem retornar una resposta amb la capçalera personalitzada, fariem:

```dart
Response customResponse = Response.ok(
  'Resposta personalitzada',
  headers: {'Content-Type': 'text/plain'}
);
```

### Routers

`Shelf` per sí mateixa no incorpora enrutament, pel que ho fem a través de la llibreria `shelf_router`, que ja hem instal·lat. 

L'enrutament ens permet definir diferents controladors per a diferents rutes o mètodes i ens ajuda a organitzar la lògica del servidor.

Per definir un enrutador, fem:

```dart
router = Router()
```

I li afegim rutes amb `router.metode`:

```dart
router.get(
  '/hola',
    (Request request) =>
        Response.ok('Hola Món!!'),)
```

Com veiem, definim com a primer argument la ruta, i com a segon el handler que s'encarregarà del seu processment.

També podem definir el mètode get en la mateixa declaració del router, amb l'operador `..`:

```dart
final router = Router()
  ..get(...);
```

Veiem un exemple d'enrutament i logging més complet (`fitxer bin/exemple_basic_router.dart`):

```dart
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
```


