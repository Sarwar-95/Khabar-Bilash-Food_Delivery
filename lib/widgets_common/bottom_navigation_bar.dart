import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/cart/order_model.dart';
import 'package:provider/provider.dart';

import '../cart/order_page.dart';
import '../const/colors.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({
    super.key,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    int count = 0;

    return Consumer<OrderModel>(
      builder: (context, value, child) 
      {
      return CurvedNavigationBar(
          backgroundColor: BackgroundColor,
          buttonBackgroundColor: Colors.white,
          color: Colors.white24,
          onTap: (Index) {
            if (Index == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrderPage();
              }));
            }
          },
          items: [
            Icon(
              Icons.home,
              size: 30,
            ),

            Badge(
                backgroundColor: Colors.orange,
                textColor: Colors.black,
                alignment: AlignmentDirectional(18, -4),
                label: Text(value.notification().toString()),
                child: 
                Icon(
                  Icons.shopping_cart, size: 30)
                ),

            Icon(Icons.map, size: 30),
          ]);
    });
  }
}
