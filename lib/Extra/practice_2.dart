import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Extra/practice_3.dart';
import 'package:provider/provider.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back))
      ]),
      body: Consumer<CardItem>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: value.cartItem1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: ListTile(
                              title: Text(value.cartItem1[index]),
                              trailing: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: (() {
                                  Provider.of<CardItem>(context, listen: false)
                                      .remove(index);
                                }),
                              ),
                            ),
                          ),
                        );
                      })),
                      Padding(
                        padding: EdgeInsets.all(36.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text("Total Price"),
                                    Text(value.additon())
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
            ],
          );
        },
      ),
    );
  }
}
