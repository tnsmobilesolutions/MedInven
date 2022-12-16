// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medinven/features/purchases/presentation/widgets/purchasewidgets.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 72, 33, 243),
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          PurchaseWidgets.showMyDialog(context);
        },
      ),
    );
  }
}
