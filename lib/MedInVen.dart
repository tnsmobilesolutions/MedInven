// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medinven/Dashboard.dart';
import 'package:medinven/SideDrawer.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/font.dart';
import 'package:sidebarx/sidebarx.dart';

class MedInVen extends StatelessWidget {
  MedInVen({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
            backgroundColor: CustomColor.white, height: 10),
        drawerTheme: DrawerThemeData(backgroundColor: CustomColor.white),
        snackBarTheme: SnackBarThemeData(
          contentTextStyle: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.white,
            //fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          elevation: 0,
          backgroundColor: CustomColor.lightGreen,
          behavior: SnackBarBehavior.floating,
        ),
        dividerColor: CustomColor.grey,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: CustomColor.customBlue,
            elevation: 0,
            iconSize: 16,
            focusColor: CustomColor.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            //shape: MaterialStateProperty<OutlinedBorder?>.,
            backgroundColor: MaterialStateProperty.all<Color>(
              CustomColor.customBlue,
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        //sliderTheme: SliderThemeData(),
        scaffoldBackgroundColor: CustomColor.white,
        brightness: Brightness.light,
        listTileTheme: ListTileThemeData(
          iconColor: CustomColor.customBlue,
          textColor: CustomColor.black,
          tileColor: CustomColor.lightSky,
          //selectedColor: Colors.black,
          selectedTileColor: CustomColor.lightSky,
        ),
        iconTheme: IconThemeData(color: CustomColor.customBlue, size: 30),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: CustomColor.lightBlue,
        //   textTheme: ButtonTextTheme.normal,
        // ),
        primaryColor: CustomColor.lightSky,
        selectedRowColor: CustomColor.white,
        primaryColorLight: CustomColor.grey,
        //backgroundColor: CustomColor.lightBlue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          headline3: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          headline4: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          headline5: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          subtitle1: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.customBlue,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          bodyText1: TextStyle(
              fontFamily: Font.fontFamily,
              color: CustomColor.black,
              fontSize: 13),
          bodyText2: TextStyle(
            fontFamily: Font.fontFamily,
            color: CustomColor.black,
            fontSize: 13,
          ),
          button: TextStyle(
            color: CustomColor.white,
            //fontWeight: FontWeight.bold,
            fontFamily: Font.fontFamily,
            fontSize: 18,
          ),
        ),
        // textButtonTheme: TextButtonThemeData(
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all(CustomColor.lightBlue),
        //     textStyle: MaterialStateProperty.all(
        //       TextStyle(
        //         //decorationColor: Colors.black,
        //         //color: CustomColor.white,
        //         fontSize: 17,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: CustomColor.grey),
          helperStyle: TextStyle(color: CustomColor.grey),
          floatingLabelStyle: TextStyle(color: CustomColor.grey),
          labelStyle: TextStyle(color: CustomColor.grey),
          iconColor: CustomColor.grey,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1.0, color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1.0, color: CustomColor.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(width: 1.0, color: CustomColor.customBlue)),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          //centerTitle: true,
          backgroundColor: CustomColor.white,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontFamily: Font.fontFamily,
            fontWeight: FontWeight.bold,
            color: CustomColor.black,
          ),
        ),
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: CustomColor.grey),
      ),
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
