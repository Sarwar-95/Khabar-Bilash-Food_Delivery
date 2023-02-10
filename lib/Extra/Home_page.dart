import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Extra/cart_model.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'grocery_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (contex) {
                return CartPage();
              },
            ));
          },
          backgroundColor: Colors.black,
          child: Icon(Icons.shopping_bag),
        ),
        body: Column(
          children: [
            Expanded(child: Consumer<cartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                    itemBuilder: ((context, index) {
                      return GroceryItemTile(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () {
                            Provider.of<cartModel>(context, listen: false)
                                .addCartItem(index);
                          });
                    }));
              },
            )),
            
          ],
        ));
  }
}
