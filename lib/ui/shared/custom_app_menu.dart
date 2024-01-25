import 'package:flutter/material.dart';
import 'package:flutter_web_base/services/navigation_service.dart';
import 'package:flutter_web_base/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomeFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, 'stateful'),
            onPressed: () => navigationService.navigateTo('stateful'),
            color: Colors.deepOrange,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, 'provider'),
            onPressed: () => navigationService.navigateTo('provider'),
            color: Colors.deepPurple,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Otra página',
            // onPressed: () => Navigator.pushNamed(context, 'abc123'),
            onPressed: () => navigationService.navigateTo('abc123'),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
