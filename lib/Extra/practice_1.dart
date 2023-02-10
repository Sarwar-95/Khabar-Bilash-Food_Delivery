import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/Extra/practice_2.dart';
import 'package:newapp/Extra/practice_3.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<int> item = [];

  @override
  void initState() {
    for (int i = 0; i < 20; i++) {
      item.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
            backgroundColor: Colors.black,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyCard();
                }));
              },
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.badge,
                color: Colors.black,
              ),
            ),
            body: Consumer<CardItem>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: item.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green[400],
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${item[index]}",
                                  style: TextStyle(fontSize: 30),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    int val = item[index];
                                    Provider.of<CardItem>(context,
                                            listen: false)
                                        .addCart(index);
                                  },
                                  color: Colors.black26,
                                  child: Text("Add"),
                                )
                              ],
                            )),
                      );
                    });
              },
            ));
      },
    );
  }
}
