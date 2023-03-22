import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'filter_page.dart';
import 'future_turns_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'received_requests_page.dart';
import 'sent_requests_page.dart';
import 'swap_page.dart';


import 'filter_page.dart';
import 'future_turns_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'received_requests_page.dart';
import 'sent_requests_page.dart';
import 'swap_page.dart';

void main() async {
  // Ensure that widget binding is initialized before calling Firebase.initializeApp()

  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  runApp(ToriApp());
}

class ToriApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tori',
        home:FutureTurnsPage()
    );
  }
}