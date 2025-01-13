import 'package:flutter/material.dart';

class SumProvider extends ChangeNotifier {
  int number;

  SumProvider({
    this.number = 0
    });

  void incrementCounter() {
    number++;
    notifyListeners();
  }

  void decrementCounter() {
    number--;
    notifyListeners();
  }
}
