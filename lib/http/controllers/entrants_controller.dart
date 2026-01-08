import 'dart:convert';

import 'package:healthys_backend/domain/entities/entrant.dart';
import 'package:healthys_backend/domain/usecase/entrants/entrants_usecases.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class EntrantsController {
  // Referència al bundle dels casos d'ús per als entrants
  final EntrantsUseCases useCases;

  // Constructor que fa la injecció de dependències del cas d'ús
  EntrantsController(this.useCases);

  // Handler per obtenir els principals
  Future<Response> getEntrants(Request request) async {
    // Cridem al cas d'ús per obtenir els entrants
    List<Entrant> entrants = await useCases.getEntrants.execute();

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(entrants);

    // Retornem la resposta en format JSON
    return Response.ok(
      jsonEncode(jsonResponse),
      headers: {'Content-Type': 'application/json'},
    );
  }

  Future<Response> getEntrantsPerTipus(Request request) async {
    final tipus = request.params['tipus'];

    // Validació del tipus
    if (tipus == null) {
      return Response.badRequest(body: "No s'haespecificat el tipus");
    }

    // Cridem al cas d'ús per obtenir els entrants
    List<Entrant> entrants = await useCases.getEntrants.execute(tipus: tipus);

    // Convertim la llista de plats a JSON
    final jsonResponse = _toJSON(entrants);

    // Retornem la resposta en format JSON
    return Response.ok(
      jsonEncode(jsonResponse),
      headers: {'Content-Type': 'application/json'},
    );
  }

  List<dynamic> _toJSON(List<Entrant> entrants) {
    return entrants
        .map(
          (entrant) => {
            'name': entrant.name,
            'description': entrant.description,
            'tipus': entrant.tipus,
            'allergens': entrant.allergens,
            'price': entrant.price,
            'calories': entrant.calories,
            'dietType': entrant.dietType,
            'additionalInfo': entrant.additionalInfo,
            'img': entrant.img,
          },
        )
        .toList();
  }
}
