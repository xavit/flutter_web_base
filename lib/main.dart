import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/pages/counter_page.dart';
import 'package:flutter_web_base/ui/pages/counter_provider_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: 'stateful',
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: Colors.white,
          // appBarTheme: const AppBarTheme(
          //   color: Colors.indigo,
          // ),
          ),
      routes: {
        'stateful': (_) => const CounterPage(),
        'provider': (_) => const CounterProviderPage(),
      },
    );
  }
}
