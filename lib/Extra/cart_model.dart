import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "30.00", "images/five.jpg", Colors.green],
    ["Mango", "10.00", "images/one.jpg", Colors.red],
    ["Apple", "50.00", "images/three.jpg", Colors.blue],
    ["Orange", "60.00", "images/two.jpg", Colors.purple],
  ];

  get shopItems => _shopItems;

  List _cartItems = [];
  get cartItems => _cartItems;

  //-------------------------------------
  void addCartItem(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //-------------------------------------
  void removeCartItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
