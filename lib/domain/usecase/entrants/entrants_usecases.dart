// Importem els casos d'ús d'aquest Bundle
import 'get_entrants_usecase.dart';

// La idea  és que aquesta classe empaquete (bundle) tots els casos d'ús
// sobre els entrants, de manera que als controladors només
// proporcionem aquest paquet/bundle.

// Tot i que ara no seria necessari, ja que només contempla un cas
// d'ús, si el nombre d'aquests creixera, faria més manipulable el pas
// dels casos d'ús als diferents controladors.

class EntrantsUseCases {
  final GetEntrantsUseCase getEntrants;
  // Aci afegiriem altres casos d'ús en un futur

  // Constructor amb pas d'arguments amb nom, pes establir els casos d'ús
  const EntrantsUseCases({
    required this.getEntrants,
    // Arguments per establir la resta de casos d'ús en un futur
  });
}
