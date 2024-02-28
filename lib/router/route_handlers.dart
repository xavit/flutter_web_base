import 'package:fluro/fluro.dart';
import 'package:flutter_web_base/ui/views/counter_provider_view.dart';
import 'package:flutter_web_base/ui/views/counter_view.dart';
import 'package:flutter_web_base/ui/views/view404.dart';

// Handlers
final Handler counterHandler = Handler(
  handlerFunc: (contex, params) {
    print(params);
    return CounterView(base: params['base']?.first ?? '5');
  },
);

final Handler counterProviderHandler = Handler(
  handlerFunc: (contex, params) {
    print(params);
    return CounterProviderView(
      base: params['q']?.first ?? '10',
    );
  },
);

final Handler dashboardUserHandler = Handler(
  handlerFunc: (contex, params) {
    print(params);
    return const View404();
  },
);

final Handler pageNotFound = Handler(
  handlerFunc: (_, __) => const View404(),
);
