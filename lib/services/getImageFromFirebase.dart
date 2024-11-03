// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// class FireStoreDataBase {
//   String? downloadURL;

//   Future<String?> getData(String imageName) async {
//     try {
//       downloadURL = await FirebaseStorage.instance
//           .ref()
//           .child(imageName) // Dynamic image name
//           .getDownloadURL();
//       return downloadURL;
//     } catch (e) {
//       debugPrint("Error - $e");
//       return null;
//     }
//   }
// }
