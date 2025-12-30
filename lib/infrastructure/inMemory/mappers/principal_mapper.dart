import 'package:healthys_backend/domain/entities/principal.dart';

class PrincipalMapper {
  // Mètode estàtic que rep un JSON i el tipus de plat (representació en la capa d'infrastructura)
  // i retorna un Principal (representació a la capa de domini)

  static Principal fromJson(
    Map<String, dynamic> json, {
    String? tipus,
  }) {
    return Principal(
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
      img:
          (json['img'] as String?) ??
          "/img/not_found.png",
    );
  }
}
