import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  // Create a list
  List<String> data = ["1", "2", "3", "4", "5", "6", "7", "8"];
  //
  String text = "";
  double result = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("$result"),),
      // ListView Builder
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.deepOrange,
            child: ListTile(
              onTap: () {
              
                 result += double.parse(data[index]);
                print(result);
              },
              title: Text(data[index]),
              trailing: Container(
                width: 70,
                child: Row(
                  children: [
                    Expanded(
                        child: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => SimpleDialog(
                                        children: [
                                          //------------------1
                                          TextField(
                                            onChanged: ((value) {
                                              setState(() {
                                                text = value;
                                              });
                                            }),
                                          ),
                                          //------------------2
                                          ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  data[index] = text;
                                                  Navigator.pop(context);
                                                });
                                              },
                                              child: Text("Add"))
                                        ],
                                      ));
                            },
                            icon: Icon(Icons.edit))),
                    Expanded(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                data.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete)))
                  ],
                ),
                
              ),
            ),
          );
        },
      ),
    );
  }
}
