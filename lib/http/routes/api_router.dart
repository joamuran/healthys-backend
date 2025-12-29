import 'package:healthys_backend/http/controllers/begudes_controller.dart';
import 'package:healthys_backend/http/controllers/entrants_controller.dart';
import 'package:healthys_backend/http/controllers/principals_controller.dart';
import 'package:healthys_backend/http/routes/begudes_router.dart';
import 'package:healthys_backend/http/routes/entrants_router.dart';
import 'package:healthys_backend/http/routes/principals_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

// Router principal.
// Distingeix entre /api/entrants, /api/principals i /api/begudes
// Fem ús de mount per "muntar" altres rutes sobre la ruta base

Router buildApiRouter(
  EntrantsController ec,
  PrincipalsController pc,
  BegudesController bc,
) {
  final api = Router()
    ..get(
      // Salut/healthcheck, per comprovar que el router funciona
      '/api/health',
      (Request _) => Response.ok('ok'),
    )
    ..mount(
      '/api/entrants', // Ruta base /api/entrants
      buildEntrantsRoutes(
        ec,
      ).call, // Rutes que es derivaran de /api/principals/...
    )
    ..mount(
      '/api/begudes', // Ruta base /api/begudes
      buildBegudesRoutes(
        bc,
      ).call, // Rutes que es derivaran de /api/principals/...
    )
    ..mount(
      '/api/principals', // Ruta base /api/principals
      buildPrincipalsRoutes(
        pc,
      ).call, // Rutes que es derivaran de /api/principals/...
    );

  return api;
}
