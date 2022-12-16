// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';

class SearchInventory extends StatefulWidget {
  const SearchInventory({super.key});

  @override
  State<SearchInventory> createState() => _SearchInventoryState();
}

class _SearchInventoryState extends State<SearchInventory> {
  @override
  Widget build(BuildContext context) {
    final medicineController = TextEditingController();

    final totalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: Theme.of(context).iconTheme.size,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyText1,
            keyboardType: TextInputType.number,
            autofocus: false,
            controller: medicineController,
            onSaved: (value) {
              medicineController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: CustomColor.customBlue,
                  )),
              labelText: "Enter Product Name...",
            ),
          ),
        ),
      ),
    );
  }
}
