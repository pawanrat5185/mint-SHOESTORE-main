import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoestore/themes/color.dart';

class RowItemsWidget extends StatelessWidget {
  const RowItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 180,
              decoration: boxDecoration,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 70),
                        height: 110,
                        width: 120,
                        decoration: darkBox,
                      ),
                      Image.asset(
                        "images/1.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Shoe",
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "For men",
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "\\\$50",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 70),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: darkBox,
                              child: Icon(
                                CupertinoIcons.cart_fill_badge_plus,
                                color: whiteColor,
                                size: 25,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
