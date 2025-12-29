import 'package:healthys_backend/http/controllers/entrants_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Router buildEntrantsRoutes(
  EntrantsController controller,
) {
  final r = Router()
    ..get('/', controller.getEntrants)
    ..get(
      '/<tipus>',
      controller.getEntrantsPerTipus,
    );
  return r;
}
