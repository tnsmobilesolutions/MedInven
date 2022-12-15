// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medinven/features/purchases/presentation/widgets/purchasewidgets.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 72, 33, 243),
        onPressed: (() {
          PurchaseDialog.showMyDialog(context);
        }),
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
