import 'package:flutter/material.dart';

import 'filter_page.dart';
import 'future_turns_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'received_requests_page.dart';
import 'sent_requests_page.dart';
import 'swap_page.dart';

void main() {
  runApp( ToriApp());
}

class ToriApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tori',
        home:HomePage()
    );
  }
}