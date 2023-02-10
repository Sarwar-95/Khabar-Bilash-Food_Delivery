import 'package:flutter/cupertino.dart';

class CardItem extends ChangeNotifier {
  List _cartItem1 = [];
  get cartItem1 => _cartItem1;

  //-------------------------------------
  void addCart(int value) {
    _cartItem1.add(value.toString());
    int len = cartItem1.length;
    print(value);
    print(len);
    notifyListeners();
  }

  void remove(int index) {
    _cartItem1.removeAt(index);
    notifyListeners();
  }

//========================================
  String additon() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItem1.length; i++) {
      totalPrice += double.parse(_cartItem1[i]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
