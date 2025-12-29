// Implementació concreta del repositori

import 'dart:async';

import 'package:healthys_backend/domain/entities/beguda.dart';
import 'package:healthys_backend/domain/entities/entrant.dart';
import 'package:healthys_backend/domain/entities/principal.dart';
import 'package:healthys_backend/domain/repository/carta_repository.dart';
import 'package:healthys_backend/infrastructure/inMemory/data_sources/in_memory_datasource.dart';

class InMemoryRepository
        // Tot i que CartaRepository és abstracta, podem tractar-la com una
        // interfície, per obligar-nos a implementar-ho tot
        implements
        CartaRepository {
  // Referència al DataSource
  InMemoryDatasource dataSource =
      InMemoryDatasource();
  // Obté una llista d'entrants
  @override
  FutureOr<List<Entrant>> getEntrants({
    String? tipus,
  }) {
    return dataSource.getEntrants(
      tipus: tipus,
    );
  }

  @override
  FutureOr<List<Principal>>
  getPrincipals({String? tipus}) {
    return dataSource.getPrincipals(
      tipus: tipus,
    );
  }

  @override
  FutureOr<List<Beguda>> getBegudes({
    String? tipus,
  }) {
    return dataSource.getBegudes(
      tipus: tipus,
    );
  }
}
