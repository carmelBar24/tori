import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'database/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'database/firebase_options.dart';
import 'Screens/filter_page.dart';
import 'Screens/future_turns_page.dart';
import 'Screens/home_page.dart';
import 'Screens/login_page.dart';
import 'Screens/received_requests_page.dart';
import 'Screens/sent_requests_page.dart';
import 'Screens/swap_page.dart';

import 'Screens/filter_page.dart';
import 'Screens/future_turns_page.dart';
import 'Screens/home_page.dart';
import 'Screens/login_page.dart';
import 'Screens/received_requests_page.dart';
import 'Screens/sent_requests_page.dart';
import 'Screens/swap_page.dart';

void main() async {
  // Ensure that widget binding is initialized before calling Firebase.initializeApp()

  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ReceivedRequestsPage());
}

class ToriApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tori',
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomePage(),
        'loginPage': (context) => LoginPage(),
        'futureTurnsPage': (context) => FutureTurnsPage(),
        'filterPage': (context) => FilterPage(),
        'receivedPage': (context) => ReceivedRequestsPage(),
        'sentPage': (context) => SentRequestsPage(),
        'swapPage': (context) => SwapPage(),
      },
    );
  }
}
