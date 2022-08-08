import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../themes/color.dart';
import 'Row_Items_Widget.dart';
import 'all_items_widget.dart';
import 'home_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Icon(
                        Icons.sort,
                        size: 30,
                        color: darkColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Badge(
                        badgeColor: Colors.redAccent,
                        padding: EdgeInsets.all(7),
                        badgeContent: Text(
                          "3",
                          style: TextStyle(color: whiteColor),
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: darkColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: boxDecoration,
                child: Row(
                  children: [
                    Container(
                      width: 300.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 27,
                      color: darkColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RowItemsWidget(),
              SizedBox(
                height: 20,
              ),
              AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
///iohuhiojio