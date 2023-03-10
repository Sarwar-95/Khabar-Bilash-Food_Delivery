import 'package:flutter/cupertino.dart';

class CounterApp extends ChangeNotifier {
  var _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }
}
