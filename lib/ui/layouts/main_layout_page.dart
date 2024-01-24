import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  Widget child;

  MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            // Text('Contenido principal')
            Expanded(child: child),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
