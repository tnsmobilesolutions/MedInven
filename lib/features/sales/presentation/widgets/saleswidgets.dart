// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SalesWidgets {
  static Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Are you sure you want to exit ?',
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 72, 33, 243),
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 72, 33, 243),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: (() {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    }),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 72, 33, 243),
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 72, 33, 243),
                          ),
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
}
