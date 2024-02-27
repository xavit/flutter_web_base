import 'package:fluro/fluro.dart';
import 'package:flutter_web_base/ui/views/counter_provider_view.dart';
import 'package:flutter_web_base/ui/views/counter_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      "/",
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/stateful",
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "/provider",
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );
  }

  // Handlers
  static final Handler _counterHandler = Handler(
    handlerFunc: (contex, params) => const CounterView(),
  );

  static final Handler _counterProviderHandler = Handler(
    handlerFunc: (contex, params) => const CounterProviderView(),
  );
}
