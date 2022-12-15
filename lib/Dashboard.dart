// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:medinven/More.dart';
import 'package:medinven/features/home/presentation/pages/HomeScreen.dart';
import 'package:medinven/features/inventory/presentation/pages/Inventory.dart';
import 'package:medinven/features/purchases/presentation/pages/Purchase.dart';
import 'package:medinven/features/sales/presentation/pages/Sales.dart';
import 'package:sidebarx/sidebarx.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key, required this.controller}) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return HomeScreen();
          case 1:
            return Inventory();
          case 2:
            return Sales();
          case 3:
            return Purchase();
          case 4:
            return More();
          default:
            return Text('');
        }
      },
    );
  }
}
