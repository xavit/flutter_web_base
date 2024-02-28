import 'package:fluro/fluro.dart';
import 'package:flutter_web_base/ui/views/counter_provider_view.dart';
import 'package:flutter_web_base/ui/views/counter_view.dart';
import 'package:flutter_web_base/ui/views/view404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  // Handlers
  static final Handler _counterHandler = Handler(
    handlerFunc: (contex, params) {
      print(params);
      return CounterView(base: params['base']?[0] ?? '5');
    },
  );

  static final Handler _counterProviderHandler = Handler(
    handlerFunc: (contex, params) {
      print(params);
      return CounterProviderView(
        base: params['q']?[0] ?? '10',
      );
    },
  );

  static final Handler _dashboardUserHandler = Handler(
    handlerFunc: (contex, params) {
      print(params);
      return const View404();
    },
  );

  static final Handler _pageNotFound = Handler(
    handlerFunc: (_, __) => const View404(),
  );

  // Routes
  static void configureRoutes() {
    router.define(
      "/",
      handler: _counterHandler,
      // transitionDuration: const Duration(milliseconds: 500),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/stateful",
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/stateful/:base",
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/provider",
      handler: _counterProviderHandler,
      transitionType: TransitionType.cupertino,
    );
    //Ruta con varios parametros
    router.define(
      "/dashboard/:userid/:roleid",
      handler: _dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
    );

    // 404
    router.notFoundHandler = _pageNotFound;
  }
}
