import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoestore/themes/color.dart';
class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.symmetric(
        vertical:  10,
        horizontal:  20,
      ) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: darkColor.withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: Row(
              children: [
                Text(
                  "Add to cart",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: whiteColor,
                  size: 32,
                )
              ],
            ),
          ),
        SizedBox(width: 55),  
           Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: darkColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: darkColor.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child:  Icon(
              Icons.shopping_bag,
              color: whiteColor,
              size: 45,
            ),
            ),

        ],
      ),
    );
  }
}