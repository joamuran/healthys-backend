import 'dart:convert';
import 'package:healthys_backend/domain/entities/principal.dart';
import 'package:healthys_backend/domain/usecase/principals/principals_usecases.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class PrincipalsController {
  // Referència al cas d'ús
  final PrincipalsUseCases useCases;

  // Constructor que fa la injecció de dependències del cas d'ús
  PrincipalsController(this.useCases);

  // Handler per obtenir els principals
  Future<Response> getPrincipals(
    Request request,
  ) async {
    // Cridem al cas d'ús per obtenir els plats principals
    List<Principal> principals =
        await useCases.getPrincipals
            .execute();

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(
      principals,
    );

    // Retornem la resposta en format JSON
    return Response.ok(
      jsonEncode(jsonResponse),
      headers: {
        'Content-Type':
            'application/json',
      },
    );
  }

  Future<Response>
  getPrincipalsPerTipus(
    Request request,
  ) async {
    final tipus =
        request.params['tipus'];

    // Validació del tipus
    if (tipus == null) {
      return Response.badRequest(
        body:
            "No s'haespecificat el tipus",
      );
    }

    // Cridem al cas d'ús per obtenir els plats principals
    List<Principal> principals =
        await useCases.getPrincipals
            .execute(tipus: tipus);

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(
      principals,
    );

    // Retornem la resposta en format JSON
    return Response.ok(
      jsonEncode(jsonResponse),
      headers: {
        'Content-Type':
            'application/json',
      },
    );
  }

  List<dynamic> _toJSON(
    List<Principal> principals,
  ) {
    return principals
        .map(
          (principal) => {
            'name': principal.name,
            'description':
                principal.description,
            'tipus': principal.tipus,
            'price': principal.price,
            'calories':
                principal.calories,
            'dietType':
                principal.dietType,
            'additionalInfo': principal
                .additionalInfo,
          },
        )
        .toList();
  }
}
