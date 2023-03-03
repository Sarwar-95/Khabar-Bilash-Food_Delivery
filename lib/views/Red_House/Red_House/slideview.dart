import 'package:flutter/material.dart';

class slideview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: [
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image: AssetImage(
                      "images/Royal_Kitchen_images/chef_special_chowmein.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 23,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image:
                      AssetImage("images/Royal_Kitchen_images/crispy_rice_bowl.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
              SizedBox(
              width: 23,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image: AssetImage(
                      "images/Royal_Kitchen_images/larb_chicken_salad.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
              SizedBox(
              width: 23,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image:
                      AssetImage("images/Royal_Kitchen_images/mutton-biriyani.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
              SizedBox(
              width: 23,
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  image: AssetImage("images/Royal_Kitchen_images/tomyum_soup.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
