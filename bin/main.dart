import 'dart:io';

import 'package:healthys_backend/server.dart';

void main(List<String> args) {
  // Si existeix, agafem el port proporcionat per l'Environment
  // Si despleguem a Globe.dev ens el proporciona
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  startServer(port);
}
