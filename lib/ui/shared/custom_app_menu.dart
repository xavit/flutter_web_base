import 'package:flutter/material.dart';
import 'package:flutter_web_base/locator.dart';
import 'package:flutter_web_base/services/navigation_service.dart';
import 'package:flutter_web_base/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 582)
            ? const _TabletDesktopMenu()
            : const _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu();

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
            onPressed: () =>
                locator<NavigationService>().navigateTo('stateful'),
            color: Colors.deepOrange,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, 'provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('provider'),
            color: Colors.deepPurple,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Otra página',
            // onPressed: () => Navigator.pushNamed(context, 'abc123'),
            onPressed: () => locator<NavigationService>().navigateTo('abc123'),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomeFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, 'stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('stateful'),
            color: Colors.deepOrange,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Contador Provider',
            // onPressed: () => Navigator.pushNamed(context, 'provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('provider'),
            color: Colors.deepPurple,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomeFlatButton(
            text: 'Otra página',
            // onPressed: () => Navigator.pushNamed(context, 'abc123'),
            onPressed: () => locator<NavigationService>().navigateTo('abc123'),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
