import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoestore/pages/home/bottom_cart_sheet.dart';
import 'package:shoestore/themes/color.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.cart_fill,
            color: whiteColor,
          ),
          Icon(
            Icons.category_outlined,
            color: whiteColor,
            size: 32,
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(context, builder: (context) {
                return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context, state) {
                    return BottomCartSheet();
                  },
                );
              });
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: whiteColor,
              size: 32,
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: whiteColor,
            size: 32,
          ),
          Icon(
            Icons.person,
            color: whiteColor,
            size: 32,
          ),
        ],
      ),
    );
  }
}
