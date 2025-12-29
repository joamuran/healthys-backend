import 'package:shelf_router/shelf_router.dart';
import '../controllers/principals_controller.dart';

Router buildPrincipalsRoutes(
  PrincipalsController controller,
) {
  final r = Router()
    ..get(
      '/', // Davant la petició GET, fem ús del mètode getPrincipals del controlador PrincipalsController
      controller.getPrincipals,
    )
    ..get(
      '/<tipus>',
      controller.getPrincipalsPerTipus,
    );

  return r;
}
