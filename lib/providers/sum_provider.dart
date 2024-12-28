import 'package:flutter/material.dart';

class SumProvider extends ChangeNotifier {
  int number;

  SumProvider({
    this.number = 10
  });

  void plusOrLess({
    required int newNumber,
  }) async {
    number = newNumber;
    notifyListeners();
  }
}