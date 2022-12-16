// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medinven/features/inventory/domain/entities/inventory_entity.dart';
import 'package:medinven/features/inventory/presentation/pages/searchInventory.dart';
import 'package:medinven/features/purchases/presentation/widgets/purchasewidgets.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  List<InventoryEntity> medList = [
    InventoryEntity(
      medicineName: 'CARCIUM - M (S/G)',
      quantityInStock: 50,
      quantityPerPack: 10,
      packagingType: 'strip of 10 tablets',
      quantity: 5,
      expiryDate: DateTime.now(),
      salt: '',
      manufacturer: '',
    ),
    InventoryEntity(
      medicineName: 'Absolute Woman Capsule',
      quantityInStock: 50,
      quantityPerPack: 10,
      packagingType: '10 soft gelatine capsules',
      quantity: 5,
      expiryDate: DateTime.now(),
      salt: '',
      manufacturer: '',
    ),
    InventoryEntity(
      medicineName: 'Zincovit',
      quantityInStock: 50,
      quantityPerPack: 10,
      packagingType: 'Blister Packs',
      quantity: 5,
      expiryDate: DateTime.now(),
      salt: '',
      manufacturer: '',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SearchInventory();
                      },
                    ));
                  }),
                  icon: Icon(
                    Icons.search,
                    size: Theme.of(context).iconTheme.size,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        title: Text(
                          medList[index].medicineName,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(medList[index].packagingType,
                                style: Theme.of(context).textTheme.bodyText1),
                            Text('2 Tablets',
                                style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          ],
        ),
      ),
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
