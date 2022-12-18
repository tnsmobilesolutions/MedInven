// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/features/sales/presentation/widgets/saleswidgets.dart';
import 'package:intl/intl.dart';

class AddPurchase extends StatefulWidget {
  const AddPurchase({super.key});

  @override
  State<AddPurchase> createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  static List<String> gstList = [
    '0%',
    '5%',
    '8%',
    '12%',
    '28%',
  ];

  static List<String> packageType = [
    'Strips',
    'Other Packet',
  ];

  static List<String> tablets = ['Tablets'];
  static List<String> unitList = [
    'mg',
    'lb',
    'IU',
    'kg',
    'ml',
    'gm',
    'pcs',
    'ltr',
  ];

  TextEditingController batchCodeController = TextEditingController();
  int containerHeight = 40;
  int containerWidth = 40;
  TextEditingController discountController = TextEditingController();
  bool isTypeSelected = false;
  TextEditingController medicineNameController = TextEditingController();
  TextEditingController mrpController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController selectedDateController = TextEditingController();
  int selectedIndex = 0;
  String selectedMedType = '%';
  List type = ['%', '\u{20B9}'];

  String? _selectedPackageType, _selectedGST, _selectedUnit;

  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: (() {
            SalesWidgets.showMyDialog(context);
          }),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: Theme.of(context).iconTheme.size,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Add Purchase',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: totalWidth,
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
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Distributor Details',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Product',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              width: totalWidth,
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
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                  color: CustomColor.red, fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Medicine Name',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 350,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: medicineNameController,
                            onSaved: (value) {
                              medicineNameController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                  color: CustomColor.red, fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Package Type',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(5),
                            style: Theme.of(context).textTheme.bodyText1,
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                            hint: Text(
                              packageType[0],
                            ),
                            value: _selectedPackageType,
                            dropdownColor: Colors.white,
                            onChanged: (value) {
                              setState(
                                () {
                                  _selectedPackageType = value;
                                  //print(_selectedMedType.toString());
                                },
                              );
                            },
                            items: packageType.map(
                              (val) {
                                return DropdownMenuItem(
                                  value: val,
                                  child: Padding(
                                    padding: EdgeInsets.all(13),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                  color: CustomColor.red, fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Qty/Pack',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: quantityController,
                            onSaved: (value) {
                              quantityController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Unit',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(5),
                            style: Theme.of(context).textTheme.bodyText1,
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                            hint: Text(
                              _selectedPackageType == packageType[1]
                                  ? unitList[0]
                                  : tablets[0],
                            ),
                            value: _selectedPackageType == packageType[0]
                                ? _selectedPackageType
                                : _selectedUnit,
                            dropdownColor: Colors.white,
                            onChanged: (value) {
                              setState(
                                () {
                                  _selectedUnit = value;
                                },
                              );
                            },
                            items: _selectedPackageType == packageType[1]
                                ? unitList.map(
                                    (val) {
                                      return DropdownMenuItem(
                                        value: val,
                                        child: Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Text(val),
                                        ),
                                      );
                                    },
                                  ).toList()
                                : tablets.map(
                                    (val) {
                                      return DropdownMenuItem(
                                        value: val,
                                        child: Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Text(val),
                                        ),
                                      );
                                    },
                                  ).toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: discountController,
                            onSaved: (value) {
                              discountController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),

                    // SizedBox(
                    //   height: 50,
                    //   child: ListView.separated(
                    //     separatorBuilder: (BuildContext context, int index) {
                    //       return SizedBox(width: 10);
                    //     },
                    //     itemCount: 3,
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return InkWell(
                    //         onTap: () {
                    //           setState(() {
                    //             isTypeSelected = !isTypeSelected;
                    //             selectedIndex = index;
                    //             selectedMedType = type[index];
                    //           });
                    //         },
                    //         child: customContainer(type[index], index),
                    //       );
                    //     },
                    //   ),
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                  color: CustomColor.red, fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'MRP / Pc',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: mrpController,
                            onSaved: (value) {
                              mrpController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'GST',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(5),
                            style: Theme.of(context).textTheme.bodyText1,
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                            hint: Text(
                              gstList[0],
                            ),
                            value: _selectedGST,
                            dropdownColor: Colors.white,
                            onChanged: (value) {
                              setState(
                                () {
                                  _selectedGST = value;
                                },
                              );
                            },
                            items: gstList.map(
                              (val) {
                                return DropdownMenuItem(
                                  value: val,
                                  child: Padding(
                                    padding: EdgeInsets.all(13),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Batch Code',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: batchCodeController,
                            onSaved: (value) {
                              batchCodeController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            controller: selectedDateController,
                            onSaved: (value) {
                              medicineNameController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                              onPressed: (() async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yMMMM').format(pickedDate);
                                  setState(() {
                                    selectedDateController.text = formattedDate;
                                  });
                                } else {}
                              }),
                              icon: Icon(
                                Icons.schedule_rounded,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Instock',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          '-',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                print('Medicine name - ${medicineNameController.text}');
                print('Quantity - ${quantityController.text}');
                print('Discount - ${discountController.text}');
                print('MRP/Pc - ${mrpController.text}');
                print('Batch Code - ${batchCodeController.text}');
                print('Exp. date - ${selectedDateController.text}');
              },
              child: Container(
                height: 45,
                width: totalWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 72, 33, 243),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.add_circle_outline_rounded,
                        size: Theme.of(context).iconTheme.size,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      SizedBox(width: totalWidth / 2.3),
                      Text(
                        'Add Medicine',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 72, 33, 243),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Optional Details',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: totalWidth,
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
              child: Center(
                child: Text(
                  'Cancel',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
