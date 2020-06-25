import 'package:flutter/material.dart';
import 'dart:math';

Random random = Random();

class Data extends ChangeNotifier {
  int _counter = 0;
  int randomNumber = random.nextInt(10);
  int get counter => _counter;
  int get changeNumber => randomNumber;

  void countUp() {
    _counter++;
    notifyListeners();
  }

  void resetNumber() {
    randomNumber = random.nextInt(10);
    _counter = 0;
    notifyListeners();
  }
}
