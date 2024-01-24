import 'package:flutter/material.dart';
import 'package:flutter_web_base/providers/counter_provider.dart';
import 'package:flutter_web_base/ui/shared/custom_elevated_buttom.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 15;

    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: const _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody();

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text("Contador PROVIDER", style: TextStyle(fontSize: 30)),
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
          const SizedBox(height: 10),
          Text('${counterProvider.counter}',
              style: const TextStyle(fontSize: 60)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomElevatedButton(
                text: '+ Incrementar',
                onPressed: () => counterProvider.increment(),
                color: Colors.blueGrey,
              ),
              const SizedBox(width: 10),
              CustomElevatedButton(
                text: '- Decrementar',
                onPressed: () => counterProvider.decrement(),
                color: Colors.brown,
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
