import 'package:healthys_backend/domain/entities/principal.dart';
import 'package:healthys_backend/domain/repository/carta_repository.dart';

class GetPrincipalsUseCase {
  late final CartaRepository repository;

  GetPrincipalsUseCase(this.repository);

  Future<List<Principal>> execute({
    String?
    tipus, // Rebem el tipus per filtrar
  }) async {
    return await repository
        .getPrincipals(tipus: tipus);
  }
}
