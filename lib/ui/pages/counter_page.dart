import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_base/ui/shared/custom_elevated_buttom.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
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
            const Text("Contador Stateful", style: TextStyle(fontSize: 30)),
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
