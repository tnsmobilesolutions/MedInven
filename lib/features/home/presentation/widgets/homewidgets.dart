// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customContainer(String text1, String text2, String text3,
      double width, Color containerColor, Color textColor, Widget icon) {
    return Container(
      height: 100,
      width: width / 5,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: containerColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  text3,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [icon],
            ),
          ),
        ],
      ),
    );
  }

  static Widget customContainer2(String text1, String text2, String text3,
      double width, Color containerColor, Color textColor) {
    return Container(
      height: 100,
      width: width / 5,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 228, 228, 243)),
        borderRadius: BorderRadius.circular(5),
        color: containerColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  text3,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
