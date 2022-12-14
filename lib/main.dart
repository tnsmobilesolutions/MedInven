// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine Inventory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Medicine Inventory'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> views = const [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Purchase'),
    ),
    Center(
      child: Text('Sales'),
    ),
    Center(
      child: Text('Inventory'),
    ),
  ];

  /// The currently selected index of the bar

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          SideNavigationBar(
            footer: SideNavigationBarFooter(label: Text('')),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Home',
              ),
              SideNavigationBarItem(
                icon: Icons.add,
                label: 'Purchase',
              ),
              SideNavigationBarItem(
                icon: Icons.shopping_bag,
                label: 'Sales',
              ),
              SideNavigationBarItem(
                icon: Icons.shopping_bag,
                label: 'Inventory',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
