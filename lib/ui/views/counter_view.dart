import 'package:flutter/material.dart';
import 'package:flutter_web_base/ui/shared/custom_elevated_buttom.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Contador Stateful",
            style: TextStyle(fontSize: 10),
          ),
          const FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Número de taps:',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Text(
            '$counter',
            style: const TextStyle(fontSize: 80),
          ),
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
        ],
        /*children: <Widget>[
          // const CustomAppMenu(),
          // const Spacer(),
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
          // const SizedBox(height: 10),
          Text('$counter', style: const TextStyle(fontSize: 80)),

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
          // const Spacer(),
        ],
        */
      ),
    );
  }
}
