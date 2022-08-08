import 'package:flutter/material.dart';

var darkColor = Color(0xFF475269);
var whiteColor = Color(0xFFFFFFFF);

var boxDecoration = BoxDecoration(
              color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: darkColor.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            ),     
                        ],
                      );
                      var darkBox = BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.circular(10),
                    );