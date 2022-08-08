import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoestore/themes/color.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 600,
        padding: EdgeInsets.only(top: 20),
        color: Color(0xFFCEDDEE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 3; i++)
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 140,
                        decoration: boxDecoration,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "itemPage");
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, right: 60),
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: darkColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Image.asset(
                                    "images/$i.png",
                                    height: 130,
                                    width: 130,
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
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
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: boxDecoration,
                                        child: Icon(
                                          CupertinoIcons.minus,
                                          size: 18,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: boxDecoration,
                                        child: Icon(
                                          CupertinoIcons.add,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: darkColor.withOpacity(0.3),
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: Icon(Icons.delete,
                                        size: 20, color: Colors.redAccent),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 200,
                      decoration: boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Fee:",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                ),
                              ),
                              Text(
                                "\$60",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: darkColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub-Total:",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                ),
                              ),
                              Text(
                                "\$150",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: darkColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discount:",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                ),
                              ),
                              Text(
                                "-\$30",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
