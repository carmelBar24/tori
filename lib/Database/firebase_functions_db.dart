 import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

 class db {
   db() {
     initConnection();
   }

   final firestore = FirebaseFirestore.instance;

   Future checkIfUserExists(String id, String password) async {
     print(id);
     print(password);

     var data = await firestore
         .collection("Users")
         .where("ID", isEqualTo: id)
         .where("Password", isEqualTo: password)
         .get();

     if (data.docs.isNotEmpty) {
       // User exists and password matches
       print("User exists and password matches");
     } else {
       // User does not exist or password is incorrect
       print("User does not exist or password is incorrect");
     }
     return data.docs.isNotEmpty;
   }

   void initConnection() async {
     WidgetsFlutterBinding.ensureInitialized();
     // Initialize Firebase
     await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
     );
   }

   Future getAppointments() async {
     final docRef = await firestore.collection("Future Queues").get();
       print("Successfully completed");
       for (var docSnapshot in docRef.docs) {
         print('${docSnapshot.id} => ${docSnapshot.data()}');
       }
       return docRef.docs;
   }
 }