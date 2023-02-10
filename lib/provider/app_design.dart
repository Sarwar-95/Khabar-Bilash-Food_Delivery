// import 'dart:html';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'counter_provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
//====================== Shared Preferences ========================

  late int counter1 = 0; // integer type er value ta store korbo

// function
  void incrementCounter() async {
    final prefs = await SharedPreferences
        .getInstance(); //sharedpreference er instance ta pref variable store korsi
    setState(() {
      counter1++;
    });
    prefs.setInt("Count", counter1);
  }

//----------- App Loading -------------
  @override
  void initState() {
    super.initState();
    loadCounterFromSharedPreferece();
  }

  void loadCounterFromSharedPreferece() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      counter1 = pref.getInt("Count") ?? 0;
    });
  }
//---------------------------------------

  void removeCounterValueSharedPreference() async {
    final pref = await SharedPreferences.getInstance();
    pref.remove("Count");
  }

//======================= Done ==========================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Notification Badges"),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 0,end: 3),
            badgeContent: Text("$counter1"),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart,size: 35,),),
          )
        ],
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("My Count : ${context.watch<CounterApp>().count}"),
            Text("My Count : $counter1"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: incrementCounter, child: Text("Click me")),

            SizedBox(
              height: 30,
            ),
             ElevatedButton(
                onPressed: removeCounterValueSharedPreference, child: Text("Delete")),    

            // ============= Provider ==================
            // Center(
            //   child: Wrap(
            //     spacing: 40,
            //     children: [
            //       FloatingActionButton(
            //         onPressed: () {
            //           context.read<CounterApp>().decrement();
            //         },
            //         child: Icon(Icons.remove),
            //       ),
            //       FloatingActionButton(
            //         onPressed: () {
            //           context.read<CounterApp>().increment();
            //         },
            //         child: Icon(Icons.plus_one),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
