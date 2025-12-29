// Classe de repositori: Aquesta és la part a la que l'aplicació accedeix
// per consultar les dades.

// Generalment, el repositori es divideix en dues parts:
//  * Una a la capa de domini (aquesta), que defineix una classe abstracta
//    que descriu el comportament (els mètodes), i
//  * Una altra a la capa d'infrastructura, que serà on fem la implementació
//    d'aqueseta classe, segons la representació que tinguen les dades.

import 'dart:async';

import 'package:healthys_backend/domain/entities/beguda.dart';
import 'package:healthys_backend/domain/entities/entrant.dart';
import 'package:healthys_backend/domain/entities/principal.dart';

abstract class CartaRepository {
  // Obté una llista d'entrants (bé directament o en un Future)
  FutureOr<List<Entrant>> getEntrants({
    String? tipus,
  }); // Proporcionem tipus per filtrar
  FutureOr<List<Principal>>
  getPrincipals({String? tipus});
  FutureOr<List<Beguda>> getBegudes({
    String? tipus,
  });
}
