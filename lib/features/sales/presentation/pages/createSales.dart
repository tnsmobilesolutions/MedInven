// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/features/sales/data/repositories/sales_repository_impl.dart';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';
import 'package:medinven/features/sales/presentation/pages/fileupload.dart';
import 'package:medinven/features/sales/presentation/widgets/saleswidgets.dart';
import 'package:intl/intl.dart';

class CreateSales extends StatefulWidget {
  const CreateSales({super.key});

  @override
  State<CreateSales> createState() => _CreateSalesState();
}

class _CreateSalesState extends State<CreateSales> {
  static List<String> catagory = [
    'Pcs',
    'Strips',
  ];

  static List<String> gstList = [
    '0%',
    '5%',
    '8%',
    '12%',
    '28%',
  ];

  TextEditingController batchCodeController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  int containerHeight = 40;
  int containerWidth = 40;
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerPhoneController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController finalDiscountNameController = TextEditingController();
  TextEditingController invoiceController = TextEditingController();
  bool isTypeSelected = false;
  TextEditingController medicineNameController = TextEditingController();
  TextEditingController mrpController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController saleDateController = TextEditingController();
  int selectedIndex = 0;
  String selectedMedType = '%';
  List type = ['%', '\u{20B9}'];
  DateTime? pickedDate, expDate;
  dynamic imageFromUploadButton;
  String? _selectedMedType, _selectedGST;

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
          'Create Sale',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Customer Details',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Customer Name',
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
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Customer Phone',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 400,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sale Date',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                controller: saleDateController,
                                onSaved: (value) {
                                  medicineNameController.text = value!;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                  onPressed: (() async {
                                    pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2100));

                                    if (pickedDate != null) {
                                      String formattedDate = DateFormat('d-M-y')
                                          .format(pickedDate!);
                                      setState(() {
                                        saleDateController.text = formattedDate;
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Medicines',
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
                              'Type',
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
                              catagory[0],
                            ),
                            value: _selectedMedType,
                            dropdownColor: Colors.white,
                            onChanged: (value) {
                              setState(
                                () {
                                  _selectedMedType = value;
                                  //print(_selectedMedType.toString());
                                },
                              );
                            },
                            items: catagory.map(
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
                              'Quantity',
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
                            controller: expDateController,
                            onSaved: (value) {
                              medicineNameController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                              onPressed: (() async {
                                expDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100),
                                    initialDatePickerMode: DatePickerMode.year);

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yMMMM').format(expDate!);
                                  setState(() {
                                    expDateController.text = formattedDate;
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
                print('Exp. date - ${expDateController.text}');
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
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Doctor\'s Name',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                controller: doctorNameController,
                                onSaved: (value) {
                                  doctorNameController.text = value!;
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
                              'Invoice Number',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 200,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                controller: invoiceController,
                                onSaved: (value) {
                                  invoiceController.text = value!;
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
                              'Final Discount',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 200,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                controller: discountController,
                                onSaved: (value) {
                                  discountController.text = value as String;
                                },
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Profit',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 25),
                            Text(
                              '\u{20B9} 0.00',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upload Prescription',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () async {
                                try {
                                  imageFromUploadButton = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ImageUploadToFirebase();
                                      },
                                    ),
                                  );
                                } catch (e) {
                                  print(e);
                                }
                              },
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 228, 228, 243)),
                                  borderRadius: BorderRadius.circular(5),
                                  color: CustomColor.white,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons
                                              .medical_information_outlined),
                                          SizedBox(width: 10),
                                          Text(
                                            'Upload Prescription',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Comments',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 200,
                              child: TextFormField(
                                maxLines: 5,
                                style: Theme.of(context).textTheme.bodyText1,
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                controller: commentsController,
                                onSaved: (value) {
                                  commentsController.text = value!;
                                },
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    SalesEntity newSale = SalesEntity(
                      customerName: customerNameController.text,
                      customerPhone:
                          int.tryParse(customerPhoneController.text) as int,
                      saleDate: pickedDate,
                      batchCode: batchCodeController.text,
                      comment: commentsController.text,
                      discount: int.tryParse(discountController.text),
                      doctorName: doctorNameController.text,
                      expiryDate: expDate,
                      finalDiscount: int.tryParse(discountController.text),
                      gst: int.tryParse(
                          _selectedGST?.replaceAll(RegExp('%'), '') as String),
                      invoiceNumber: invoiceController.text,
                      medicineName: medicineNameController.text,
                      medicineType: _selectedMedType as String,
                      quantity: int.tryParse(quantityController.text) as int,
                      mrp: int.tryParse(mrpController.text) as int,
                    );
                    SalesRepositoryImpl.addSale(newSale);
                    print(newSale);
                  },
                  child: Container(
                    height: 100,
                    width: totalWidth / 2,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 228, 228, 243)),
                      borderRadius: BorderRadius.circular(6),
                      color: CustomColor.customBlue,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                '\u{20B9} 0.00',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                          Text(
                            'Proceed',
                            style: Theme.of(context).textTheme.button,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
