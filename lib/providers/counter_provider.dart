import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 12;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
