import 'package:flutter/material.dart';
import 'package:flutter_web_base/locator.dart';
import 'package:flutter_web_base/router/route_generator.dart';
import 'package:flutter_web_base/services/navigation_service.dart';

import 'package:flutter_web_base/ui/layouts/main_layout_page.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rutas App',
        initialRoute: 'stateful',
        theme: ThemeData.dark(),
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(
            child: child ?? const CircularProgressIndicator(),
          );
        });
  }
}
