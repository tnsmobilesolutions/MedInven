// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/features/purchases/presentation/pages/searchPurchases.dart';
import 'package:medinven/features/purchases/presentation/widgets/purchasewidgets.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SearchPurchases();
                        },
                      ));
                    }),
                    icon: Icon(
                      Icons.search,
                      size: Theme.of(context).iconTheme.size,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (() {}),
                child: PurchaseWidgets.customContainerPurchase(
                    totalWidth, context),
              ),
              SizedBox(height: 40),
              Text('Insights', style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PurchaseWidgets.customContainerPurchase3(
                        context,
                        '\u{20B9} 0',
                        '0 Purchases',
                        'Today',
                        totalWidth,
                        CustomColor.white,
                        CustomColor.customBlue),
                    SizedBox(width: 20),
                    PurchaseWidgets.customContainerPurchase3(
                        context,
                        '1',
                        '\u{20B9} 0',
                        'Lifetime Purchases',
                        totalWidth,
                        CustomColor.white,
                        CustomColor.customBlue),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Purchases',
                      style: Theme.of(context).textTheme.titleMedium),
                  TextButton(
                    onPressed: (() {}),
                    child: Text('View All',
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: totalWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 228, 228, 243)),
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColor.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Atanu Sabyasachi',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            'Net Amount - N/A',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            '1  Product(s)',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Returns',
                      style: Theme.of(context).textTheme.titleMedium),
                  TextButton(
                    onPressed: (() {}),
                    child: Text('View All',
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No Recent Returns',
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 72, 33, 243),
        onPressed: (() {
          PurchaseWidgets.showMyDialog(context);
        }),
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
