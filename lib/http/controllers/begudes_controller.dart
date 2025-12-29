import 'dart:convert';

import 'package:healthys_backend/domain/entities/beguda.dart';
import 'package:healthys_backend/domain/usecase/begudes/begudes_usecases.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BegudesController {
  // Referència al cas d'ús
  final BegudesUseCases useCases;

  // Constructor que fa la injecció de dependències del cas d'ús
  BegudesController(this.useCases);

  // Handler per obtenir les begudes
  Future<Response> getBegudes(
    Request request,
  ) async {
    // Cridem al cas d'ús per obtenir els entrants
    List<Beguda> begudes =
        await useCases.getBegudes
            .execute();

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(
      begudes,
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

  Future<Response> getBegudesPerTipus(
    Request request,
  ) async {
    final tipus =
        request.params['tipus'];

    // Validació del tipus
    if (tipus == null) {
      return Response.badRequest(
        body:
            "No s'ha especificat el tipus",
      );
    }

    // Cridem al cas d'ús per obtenir els entrants
    List<Beguda> begudes =
        await useCases.getBegudes
            .execute(tipus: tipus);

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(
      begudes,
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
    List<Beguda> begudes,
  ) {
    return begudes
        .map(
          (entrant) => {
            'name': entrant.name,
            'description':
                entrant.description,
            'tipus': entrant.tipus,
            'price': entrant.price,
            'calories':
                entrant.calories,
            'isAlcoholic':
                entrant.isAlcoholic,
            'additionalInfo':
                entrant.additionalInfo,
          },
        )
        .toList();
  }
}
