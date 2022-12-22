import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medinven/customcolor.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  get totalWidth => null;

  get customerNameController => null;

  get customerPhoneController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {},
          color: Theme.of(context).iconTheme.color,
        ),
        title: const Text(
          'Shop Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: (MediaQuery.of(context).size.height / 2),
            width: (MediaQuery.of(context).size.width / 2),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(5),
              color: CustomColor.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter shop details to create\nyour stores',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shop Owner Name',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerNameController,
                              onSaved: (value) {
                                customerNameController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shop Name',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 200,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerPhoneController,
                              onSaved: (value) {
                                customerPhoneController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PIN Code',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 190,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerNameController,
                              onSaved: (value) {
                                customerNameController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'City',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerPhoneController,
                              onSaved: (value) {
                                customerPhoneController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'State',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerPhoneController,
                              onSaved: (value) {
                                customerPhoneController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adress',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 400,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              controller: customerNameController,
                              onSaved: (value) {
                                customerNameController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            // padding: MaterialStateProperty.all<EdgeInsets>(
                            //     const EdgeInsets.fromLTRB(5, 0, 40, 0)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                CustomColor.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                CustomColor.darkPurple),
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
