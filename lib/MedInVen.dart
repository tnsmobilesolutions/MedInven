// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medinven/Dashboard.dart';
import 'package:medinven/SideDrawer.dart';
import 'package:sidebarx/sidebarx.dart';

class MedInVen extends StatelessWidget {
  MedInVen({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            // appBar: isSmallScreen
            //     ? AppBar(
            //         //backgroundColor: canvasColor,
            //         title: Text(''),
            //         leading: IconButton(
            //           onPressed: () {
            //             // if (!Platform.isAndroid && !Platform.isIOS) {
            //             //   _controller.setExtended(true);
            //             // }
            //             _key.currentState?.openDrawer();
            //           },
            //           icon: Icon(Icons.menu),
            //         ),
            //       )
            //     : null,
            drawer: SideDrawer(
              controller: _controller,
            ),
            body: Row(
              children: [
                if (!isSmallScreen)
                  SideDrawer(
                    controller: _controller,
                  ),
                Expanded(
                  child: Center(
                    child: Dashboard(
                      controller: _controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
