import 'package:flutter/material.dart';
import 'package:flutter_web_base/locator.dart';
import 'package:flutter_web_base/router/router.dart';
import 'package:flutter_web_base/services/navigation_service.dart';

import 'package:flutter_web_base/ui/layouts/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/',
      theme: ThemeData.dark(),
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
