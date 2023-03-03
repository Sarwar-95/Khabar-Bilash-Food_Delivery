import 'package:flutter/material.dart';
import 'package:newapp/cart/order_model.dart';

class rice_bowl extends StatefulWidget {
  @override
  State<rice_bowl> createState() => _rice_bowlState();
}

class _rice_bowlState extends State<rice_bowl> {
  var b1 = OrderModel();
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //1st Item
              GestureDetector(
                onTap: () {
                  b1.cartAdd([
                    "Chicken Rice Bowl",
                    "Price: 220",
                  ]);
                },
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/indian-butter-chicken-black-bowl-wooden-table_123827-20594.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          //color: Colors.black,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Chicken Rice Bowl",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Price: 220",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 38,
                                  ),
                                  Text(
                                    "Rice Bowl ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.fireplace,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              //2nd Item
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kfcbd.com/storage/products/2GAipyiQI9OUgzlf4L0ZlnVoo.jpg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Crispy Chicken Rice",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Price: 220",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 38,
                                ),
                                Text(
                                  "Rice Bowl ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fireplace,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // 3rd Item
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/1/11/0/KC1912_Bacon-and-Egg-Fried-Rice_s4x3.jpg.rend.hgtvcom.616.462.suffix/1547241481011.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "EGG Rice Bowl",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Price: 230",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 38,
                                ),
                                Text(
                                  "Rice Bowl ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fireplace,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //4th Item
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://emeals-menubuilder.s3.amazonaws.com/v1/recipes/655948/pictures/large_salmon-poke-bowl.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        //color: Colors.black,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Salmon Rice Bowl",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Price: 270",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 38,
                                ),
                                Text(
                                  "Rice Bowl ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fireplace,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // 5th Item
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://s3-eu-west-1.amazonaws.com/images-marleyspoon-production/media/recipes/80343/main_photos/large/korean_shaved_steak_rice_bowl-6af24c1618d68c5ac2279689f7505645.jpeg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        //color: Colors.black,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Korean Rice Bowl",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Price: 260",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 38,
                                ),
                                Text(
                                  "Rice Bowl ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.fireplace,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
