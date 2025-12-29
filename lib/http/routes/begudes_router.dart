import 'package:healthys_backend/http/controllers/begudes_controller.dart';
import 'package:shelf_router/shelf_router.dart';

Router buildBegudesRoutes(
  BegudesController controller,
) {
  final r = Router()
    ..get('/', controller.getBegudes)
    ..get(
      '/<tipus>',
      controller.getBegudesPerTipus,
    );
  return r;
}
