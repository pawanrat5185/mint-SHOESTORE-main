import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoestore/pages/item/item_bottom_nav_bar.dart';
import 'package:shoestore/themes/color.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: darkColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: boxDecoration,
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 230,
                    margin: EdgeInsets.only(top: 20, right: 70),
                    decoration: BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Image.asset(
                    "images/1.png",
                    height: 350,
                    width: 350,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                boxShadow: [
                  BoxShadow(
                      color: darkColor.withOpacity(0.4),
                      blurRadius: 10,
                      spreadRadius: 1)
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Nike Shoe",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: darkColor,
                        ),
                      ),
                      Text(
                        "\$50",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 20,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) => Icon(
                        Icons.stars_outlined,
                        color: Colors.redAccent,
                      ),
                      onRatingUpdate: (index) {},
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "This is description of the shoe product. This is description of the shoe product. This is description of the shoe product.",
                    style: TextStyle(
                      fontSize: 17,
                      color: darkColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      for (int i = 5; i < 10; i++)
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: boxDecoration,
                          child: Text(
                            "$i",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
