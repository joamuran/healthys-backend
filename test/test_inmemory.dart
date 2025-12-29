import 'package:healthys_backend/infrastructure/inMemory/data_sources/in_memory_datasource.dart';

void main(List<String> args) {
  var dataSource = InMemoryDatasource();
  print("****Entrants*******");
  print(dataSource.getEntrants());
  print("\n\n****Principals*******");
  print(dataSource.getPrincipals());
  print("\n\n****Begudes*******");
  print(dataSource.getBegudes());
}
