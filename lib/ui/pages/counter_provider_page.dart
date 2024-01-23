import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_base/ui/shared/custom_elevated_buttom.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CustomAppMenu(),
            const Spacer(),
            const Text("Contador PROVIDER", style: TextStyle(fontSize: 30)),
            const FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Número de taps:',
                  style: TextStyle(fontSize: 80),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text('$counter', style: const TextStyle(fontSize: 80)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  text: '+ Incrementar',
                  onPressed: () => setState(() => counter++),
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 10),
                CustomElevatedButton(
                  text: '- Decrementar',
                  onPressed: () => setState(() => counter--),
                  color: Colors.brown,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
