// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/features/sales/presentation/pages/createSales.dart';
import 'package:medinven/features/sales/presentation/pages/salesList.dart';
import 'package:medinven/features/sales/presentation/pages/searchSales.dart';
import 'package:medinven/features/sales/presentation/widgets/saleswidgets.dart';

class Sales extends StatefulWidget {
  Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: Theme.of(context).appBarTheme.elevation,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Text('Sales', style: Theme.of(context).textTheme.headline2),
            Text('0 sales', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        title: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SearchSales();
              },
            ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search, color: CustomColor.grey),
              SizedBox(width: 10),
              Text('Search Sales...',
                  style: Theme.of(context).textTheme.headline3),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.customBlue),
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColor.white,
                ),
                child: Center(
                  child: Text(
                    'SALES  REPORT',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sales Insights',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SalesWidgets.customContainer(
                      context,
                      '\u{20B9} 0.00',
                      'Total Sales Amount',
                      'Today',
                      totalWidth,
                      CustomColor.white,
                      CustomColor.customBlue,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SalesWidgets.customContainer(
                      context,
                      '0',
                      'Total',
                      'Lifetime Sales',
                      totalWidth,
                      CustomColor.white,
                      CustomColor.customBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SalesWidgets.customContainer(
                      context,
                      '\u{20B9} 0.00',
                      'Total Profit',
                      'Today',
                      totalWidth,
                      CustomColor.white,
                      CustomColor.customBlue,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SalesWidgets.customContainer(
                      context,
                      '\u{20B9} 0',
                      'Total Profit',
                      'Lifetime',
                      totalWidth,
                      CustomColor.white,
                      CustomColor.customBlue,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Sales',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All Sales',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: totalWidth / 2.4,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 228, 228, 243)),
                      borderRadius: BorderRadius.circular(5),
                      color: CustomColor.white,
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
                                'Net Amount',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                '\u{20B9} ${SalesList.invenList[1].mrp}',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              SizedBox(height: 20),
                              Text(
                                SalesList.invenList[1].customerName ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  //color: textColor,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: (() {}),
                            icon: Icon(Icons.delete),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 150,
                    width: totalWidth / 2.4,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 228, 228, 243)),
                      borderRadius: BorderRadius.circular(5),
                      color: CustomColor.white,
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
                                'Net Amount',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                '\u{20B9} ${SalesList.invenList[2].mrp}',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              SizedBox(height: 20),
                              Text(
                                SalesList.invenList[2].customerName ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  //color: textColor,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: (() {}),
                            icon: Icon(Icons.delete),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 72, 33, 243),
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CreateSales();
            },
          ));
        },
      ),
    );
  }
}
