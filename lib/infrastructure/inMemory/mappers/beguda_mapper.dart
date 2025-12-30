import 'package:healthys_backend/domain/entities/beguda.dart';

class BegudaMapper {
  // Mètode estàtic que rep un JSON i el tipus de plat (representació en la capa d'infrastructura)
  // i retorna un Entrant (representació a la capa de domini)

  static Beguda fromJson(
    Map<String, dynamic> json, {
    String? tipus,
  }) {
    return Beguda(
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
      additionalInfo:
          json["additionalInfo"],
      isAlcoholic:
          (json['isAlcoholic']
              as bool?) ??
          false,
      img:
          (json['img'] as String?) ??
          "/img/not_found.png",
    );
  }
}
