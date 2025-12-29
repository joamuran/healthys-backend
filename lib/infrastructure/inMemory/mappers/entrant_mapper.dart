import 'package:healthys_backend/domain/entities/entrant.dart';

class EntrantMapper {
  // Mètode estàtic que rep un JSON i el tipus de plat (representació en la capa d'infrastructura)
  // i retorna un Entrant (representació a la capa de domini)

  static Entrant fromJson(
    Map<String, dynamic> json, {
    String? tipus,
  }) {
    return Entrant(
      name: json["name"],
      description: json["description"],
      tipus: tipus,
      allergens: List<String>.from(
        json['allergens'] ?? const [],
      ),
      price: (json['price'] as num)
          .toDouble(),
      calories:
          (json['calories'] as num)
              .toInt(),
      dietType: List<String>.from(
        json['dietType'] ?? const [],
      ),
      additionalInfo:
          json["additionalInfo"],
    );
  }
}
