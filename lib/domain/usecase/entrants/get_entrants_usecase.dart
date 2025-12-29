import 'package:healthys_backend/domain/entities/entrant.dart';
import 'package:healthys_backend/domain/repository/carta_repository.dart';

class GetEntrantsUseCase {
  late final CartaRepository repository;

  GetEntrantsUseCase(this.repository);

  Future<List<Entrant>> execute({
    String?
    tipus, // Rebem el tipus per filtrar
  }) async {
    return await repository.getEntrants(
      tipus: tipus,
    );
  }
}
