// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medinven/features/home/presentation/widgets/homewidgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: CustomWidgets.customContainer(
                          '0',
                          'Today',
                          'Sales',
                          totalWidth,
                          Color.fromARGB(169, 165, 235, 212),
                          Color.fromARGB(169, 13, 110, 78),
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: Color.fromARGB(169, 13, 110, 78),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: CustomWidgets.customContainer(
                          '0',
                          '0 Days',
                          'Savings',
                          totalWidth,
                          Color.fromARGB(169, 173, 179, 235),
                          Color.fromARGB(169, 21, 29, 105),
                          Icon(
                            Icons.savings,
                            color: Color.fromARGB(169, 21, 29, 105),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: CustomWidgets.customContainer(
                          '0',
                          'Today',
                          'Sales',
                          totalWidth,
                          Color.fromARGB(132, 111, 210, 223),
                          Color.fromARGB(132, 16, 98, 109),
                          Icon(
                            Icons.medication,
                            color: Color.fromARGB(132, 16, 98, 109),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: CustomWidgets.customContainer(
                          '0',
                          'Today',
                          'Sales',
                          totalWidth,
                          Color.fromARGB(169, 255, 219, 179),
                          Color.fromARGB(169, 168, 97, 14),
                          Icon(
                            Icons.notifications,
                            color: Color.fromARGB(169, 168, 97, 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Sales',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomWidgets.customContainer2(
                                '0',
                                'Total Sales Amount',
                                'Today',
                                totalWidth,
                                Colors.white,
                                Colors.blue),
                            SizedBox(width: 10),
                            CustomWidgets.customContainer2('0', 'Total Profit',
                                'Today', totalWidth, Colors.white, Colors.blue),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: (() {}),
                                  child: Container(
                                    height: 45,
                                    width: totalWidth / 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'See Sales Report',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: (() {}),
                                  child: Container(
                                    height: 45,
                                    width: totalWidth / 5,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'View All Sales',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 400,
                          width: totalWidth / 1.6,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 228, 228, 243)),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'View All Sales',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(),
                        Container(),
                        Container(),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
