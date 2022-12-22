import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medinven/customcolor.dart';
import 'package:medinven/more_my_store.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7FF),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 17,
                  ),
                  const Text('dhananjay',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Text('OWNER * +918093648091'),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.fromLTRB(5, 0, 40, 0)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffFFB74A)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ))),
                        onPressed: () => null,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text("Verify\nkyc!".toUpperCase(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        )),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Shop Name',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  const Text(
                    'medi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: const SizedBox(
                    height: 15,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyStore(),
                ),
              ),
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Icon(
                          Icons.store_sharp,
                          color: CustomColor.customBlue,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('My Store',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.people_outline,
                        color: CustomColor.customBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('My Customers',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.edit,
                        color: CustomColor.customBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Change Lanuage',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.whatsapp,
                        color: CustomColor.customBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Contact us',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.question_mark,
                        color: CustomColor.customBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Printers',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: CustomColor.customBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('About us',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 70,
                child: Card(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.power_settings_new,
                        color: CustomColor.red,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Signout',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
