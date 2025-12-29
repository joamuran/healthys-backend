// Classe que s'encarrega de la injecció de dependències

import 'package:healthys_backend/domain/repository/carta_repository.dart';
import 'package:healthys_backend/domain/usecase/begudes/begudes_usecases.dart';
import 'package:healthys_backend/domain/usecase/begudes/get_begudes_usecase.dart';
import 'package:healthys_backend/domain/usecase/entrants/entrants_usecases.dart';
import 'package:healthys_backend/domain/usecase/entrants/get_entrants_usecase.dart';
import 'package:healthys_backend/domain/usecase/principals/get_principals_usecase.dart';
import 'package:healthys_backend/domain/usecase/principals/principals_usecases.dart';

class DependencyInjection {
  // Seguim un patró Singleton
  static final DependencyInjection
  _instance =
      DependencyInjection._internal();

  // Referència al repositori
  late CartaRepository
  _repository; //=InMemoryRepository();

  // Constructor privat per evitar la creació d'instàncies fora de la classe
  DependencyInjection._internal();

  // Getter per obtenir la instància del singleton
  static DependencyInjection
  get instance => _instance;

  // Mètode per inicialitzar el repositori.
  void setRepository(
    CartaRepository repository,
  ) {
    _repository = repository;
  }

  // Registre de les dependències

  PrincipalsUseCases
  principalsUseCases() =>
      PrincipalsUseCases(
        getPrincipals:
            GetPrincipalsUseCase(
              _repository,
            ),
        // addPrincipal: ... // Si volguèrem fer més CRUD
      );

  BegudesUseCases
  begudesUseCases() => BegudesUseCases(
    getBegudes: GetBegudesUseCase(
      _repository,
    ),
    // addBeguda: ... // Si volguèrem fer més CRUD
  );

  EntrantsUseCases
  entrantsUseCases() => EntrantsUseCases(
    getEntrants: GetEntrantsUseCase(
      _repository,
    ),
    // addEntrant: ... // Si volguèrem fer més CRUD
  );
}
