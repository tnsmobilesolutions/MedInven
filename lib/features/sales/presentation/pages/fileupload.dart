// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medinven/customcolor.dart';

class ImageUploadToFirebase extends StatefulWidget {
  const ImageUploadToFirebase({Key? key}) : super(key: key);

  @override
  State<ImageUploadToFirebase> createState() => _ImageUploadToFirebaseState();
}

class _ImageUploadToFirebaseState extends State<ImageUploadToFirebase> {
  // String name = '';
  XFile? previewImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Prescription',
          //style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            previewImage != null && previewImage!.path.isNotEmpty
                ? Image.file(
                    File(previewImage!.path),
                    height: 400,
                  )
                : SizedBox.shrink(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: FloatingActionButton.extended(
                    backgroundColor: CustomColor.lightSky,
                    label: Text(
                      'Upload',
                      style: Theme.of(context).textTheme.button,
                    ),
                    heroTag: '3',
                    onPressed: () async {
                      if (previewImage != null) {
                        Navigator.pop(context, previewImage);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          'Prescription Uploaded',
                        )));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Please Upload any Prescription',
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: CustomColor.lightSky,
                      heroTag: '1',
                      onPressed: () async {
                        previewImage = await camera();
                        if (previewImage != null &&
                            previewImage!.path.isNotEmpty) {
                          setState(() {});
                        }
                      },
                      child: const Icon(
                        Icons.camera_alt,
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    FloatingActionButton(
                      backgroundColor: CustomColor.lightSky,
                      heroTag: '2',
                      onPressed: () async {
                        previewImage = await gallery();
                        if (previewImage != null &&
                            previewImage!.path.isNotEmpty) {
                          setState(() {});
                        }
                      },
                      child: const Icon(
                        Icons.photo,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }

//   currentData() async {
//     final User? user = FirebaseAuth.instance.currentUser;
//     final uid = user?.uid;
//     FirestoreData firestore = FirestoreData(uid: uid);
//     final names = await firestore.getCurrentUserData();
//   }
}

Future<XFile?> camera() async {
  return await ImagePicker().pickImage(source: ImageSource.camera);
}

Future<XFile?> gallery() async {
  return await ImagePicker().pickImage(source: ImageSource.gallery);
}
