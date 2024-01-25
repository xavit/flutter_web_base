import 'package:flutter/cupertino.dart';

class _NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    print('Route: $routeName');
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToAndRemoveUntil(String routeName) {
    print('Route: $routeName');
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}

final navigationService = _NavigationService();
