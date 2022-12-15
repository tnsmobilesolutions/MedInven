// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  double? width;

  Future<void> showMyDialog() async {
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
                      width: width! / 2,
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
                      width: width! / 2,
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

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    setState(() {
      width = totalWidth;
    });
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 72, 33, 243),
        onPressed: showMyDialog,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
