// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideDrawer extends StatelessWidget {
  SideDrawer({Key? key, required this.controller}) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      theme: SidebarXTheme(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: Color.fromARGB(169, 173, 179, 235),
        textStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
        selectedTextStyle: TextStyle(color: Colors.white),
        itemTextPadding: EdgeInsets.only(left: 30),
        selectedItemTextPadding: EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(169, 173, 179, 235),
              Color.fromARGB(169, 173, 179, 235),
            ],
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.28),
          //     blurRadius: 30,
          //   )
          // ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
      //footerDivider: Divider(color: Colors.white.withOpacity(0.3), height: 1),
      headerBuilder: (context, extended) {
        return Column(
          children: [
            SizedBox(height: 30),
            Text(
              'W  E  L  C  O  M  E',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 30),
          ],
        );
      },
      collapseIcon: Icons.arrow_back_ios_new_rounded,
      extendIcon: Icons.arrow_forward_ios_rounded,
      items: [
        SidebarXItem(
          iconWidget: Icon(Icons.home, color: Colors.grey),
          label: 'Home',
        ),
        SidebarXItem(
          iconWidget: Icon(Icons.inventory_2_rounded, color: Colors.grey),
          label: 'Inventory',
        ),
        SidebarXItem(
          iconWidget: Icon(Icons.shopping_bag_rounded, color: Colors.grey),
          label: 'Sales',
        ),
        SidebarXItem(
          iconWidget: Icon(Icons.local_shipping_rounded, color: Colors.grey),
          label: 'Purchase',
        ),
        SidebarXItem(
          iconWidget: Icon(Icons.menu, color: Colors.grey),
          label: 'More',
        ),
      ],
    );
  }
}
