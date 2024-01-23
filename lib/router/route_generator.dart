import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/pages/counter_page.dart';
import 'package:flutter_web_base/ui/pages/counter_provider_page.dart';
import 'package:flutter_web_base/ui/pages/page404.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');
    switch (settings.name) {
      case 'stateful':
        return _fadeRoute(const CounterPage(), 'stateful');

      case 'provider':
        return _fadeRoute(const CounterProviderPage(), 'provider');

      default:
        return _fadeRoute(const Page404(), '404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
