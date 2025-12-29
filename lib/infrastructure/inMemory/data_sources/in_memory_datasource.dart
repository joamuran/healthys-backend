import 'dart:async';

// importem la llista d'entrants, principals i bebudes definida a data/inmemory.dart
import 'package:healthys_backend/domain/entities/beguda.dart';
import 'package:healthys_backend/domain/entities/entrant.dart';
import 'package:healthys_backend/domain/entities/principal.dart';
import 'package:healthys_backend/infrastructure/inMemory/data/inmemory.dart';
import 'package:healthys_backend/infrastructure/inMemory/mappers/beguda_mapper.dart';
import 'package:healthys_backend/infrastructure/inMemory/mappers/entrant_mapper.dart';
import 'package:healthys_backend/infrastructure/inMemory/mappers/principal_mapper.dart';

class InMemoryDatasource {
  // Constructor
  InMemoryDatasource();

  FutureOr<List<Entrant>> getEntrants({
    String? tipus,
  }) {
    List<Entrant> llistaEntrants = [];
    // recorrem la llista de claus si no s'especifica el tipus (amanides, tartars, etc.)
    final Iterable<String> claus =
        tipus != null
        ? [tipus]
        : entrants.keys;
    for (var key in claus) {
      // Recorrem la llista d'entrants per a cada clau
      for (var entrant
          in entrants[key]
                  as List? ?? // Per evitar errors si és nul
              const []) {
        // Mapegem l'entrant i l'afegim a la llista
        // Li proporcionem l'entrant en format JSON i la clau, que és el tipus
        llistaEntrants.add(
          EntrantMapper.fromJson(
            entrant,
            tipus: key,
          ),
        );
      }
    }

    return llistaEntrants;
  }

  FutureOr<List<Principal>>
  getPrincipals({String? tipus}) {
    List<Principal> llistaPincipals =
        [];
    // recorrem la llista de claus
    final Iterable<String> claus =
        tipus != null
        ? [tipus]
        : principals.keys;
    for (var key in claus) {
      // Recorrem la llista d'entrants per a cada clau
      for (var principal
          in principals[key]
                  as List? ?? // Per evitar errors si és nul
              const []) {
        // Mapegem l'entrant i l'afegim a la llista
        // Li proporcionem l'entrant en format JSON i la clau, que és el tipus
        llistaPincipals.add(
          PrincipalMapper.fromJson(
            principal,
            tipus: key,
          ),
        );
      }
    }

    return llistaPincipals;
  }

  FutureOr<List<Beguda>> getBegudes({
    String? tipus,
  }) {
    List<Beguda> llistaBegudes = [];
    // recorrem la llista de claus (amanides, tartars, etc.)
    final Iterable<String> claus =
        tipus != null
        ? [tipus]
        : begudes.keys;
    for (var key in claus) {
      // Recorrem la llista d'entrants per a cada clau
      for (var beguda
          in begudes[key]
                  as List? ?? // Per eviar errors si és nul
              const []) {
        // Mapegem l'entrant i l'afegim a la llista
        // Li proporcionem l'entrant en format JSON i la clau, que és el tipus
        llistaBegudes.add(
          BegudaMapper.fromJson(
            beguda,
            tipus: key,
          ),
        );
      }
    }

    return llistaBegudes;
  }
}
