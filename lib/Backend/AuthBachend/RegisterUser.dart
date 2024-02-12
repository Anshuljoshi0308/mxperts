import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

Future<void> firebaseRegister(Map<String, String> data ,   Function() onDone ) async {
  try {
   await FirebaseFirestore.instance.collection("UserData").add(data).whenComplete((){
      onDone();
    });
  } catch (e) {
    print(e);
  }
}
