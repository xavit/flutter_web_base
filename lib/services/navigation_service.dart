import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    debugPrint('Route: $routeName');
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToAndRemoveUntil(String routeName) {
    debugPrint('Route: $routeName');
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}

// final navigationService = NavigationService();
