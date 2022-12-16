// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';

class PurchaseWidgets {
  static Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add Purchase',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: Icon(Icons.close_outlined))
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(
                  child: Text(
                    'Choose Product addition method from below to add products in your inventory',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      height: 45,
                      width: 450,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 72, 33, 243),
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.folder_open_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 72, 33, 243)),
                            SizedBox(width: 150),
                            Text(
                              'From Gallery',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 72, 33, 243),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      height: 45,
                      width: 450,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 72, 33, 243),
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.medication_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 72, 33, 243)),
                            SizedBox(width: 150),
                            Text(
                              'Add Manually',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 72, 33, 243),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        );
      },
    );
  }

  static Widget customContainerPurchase(double width, BuildContext context) {
    return Container(
      height: 100,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 228, 228, 243)),
        borderRadius: BorderRadius.circular(5),
        color: CustomColor.darkGreen,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Distributors',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Row(
                  children: [
                    Text(
                      '1  Added',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: CustomColor.white, size: 20),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image(image: AssetImage('assets/images/med1.png')),
            ),
          ],
        ),
      ),
    );
  }

  static Widget customContainerPurchase2(
      String text1,
      String text2,
      String text3,
      double width,
      Color containerColor,
      Color textColor,
      Widget icon) {
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

  static Widget customContainerPurchase3(
    BuildContext context,
    String text1,
    String text2,
    String text3,
    double width,
    Color containerColor,
    Color textColor,
  ) {
    return Container(
      height: 100,
      width: width / 2.35,
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
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  text2,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  text3,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
