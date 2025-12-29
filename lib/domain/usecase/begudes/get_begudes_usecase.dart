import 'package:healthys_backend/domain/entities/beguda.dart';
import 'package:healthys_backend/domain/repository/carta_repository.dart';

class GetBegudesUseCase {
  final CartaRepository repository;

  GetBegudesUseCase(this.repository);

  Future<List<Beguda>> execute({
    String?
    tipus, // Rebem el tipus per filtrar
  }) async {
    return await repository.getBegudes(
      tipus: tipus,
    );
  }
}
