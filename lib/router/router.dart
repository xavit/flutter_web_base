import 'package:fluro/fluro.dart';
import 'package:flutter_web_base/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  // Routes
  static void configureRoutes() {
    router.define(
      "/",
      handler: counterHandler,
      // transitionDuration: const Duration(milliseconds: 500),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/stateful",
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/stateful/:base",
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/provider",
      handler: counterProviderHandler,
      transitionType: TransitionType.cupertino,
    );
    //Ruta con varios parametros
    router.define(
      "/dashboard/:userid/:roleid",
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
    );

    // 404
    router.notFoundHandler = pageNotFound;
  }
}
