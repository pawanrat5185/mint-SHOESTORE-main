import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoestore/themes/color.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.all(8),
            decoration: boxDecoration,
            child: Column(
              children: [
               InkWell(
                 onTap:() {
                   Navigator.pushNamed(context, "itemPage");
                 },
                 child : Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/$i.png",
                    height: 130,
                    width: 130,
                  ),
                ),
               ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nike Shoe for Men",
                      style: TextStyle(
                        fontSize: .15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                         Text(
                          "\$50",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
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
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
