import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '404',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          Text(
            'No se encontró la página',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, 'stateful'),
            child: const Text('Regresar'),
          )
        ],
      ),
    );
  }
}
