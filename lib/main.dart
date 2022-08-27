import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/auth.dart';
import './screens/history_screen.dart';
import './screens/error_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Bank application',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color.fromRGBO(0, 0, 0, 0.5),
      ),
      routes: {
        '/': (ctx) => Auth(),
        '/home': (ctx) => Home(),
        '/transaction-history': (ctx) => const HistoryScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const ErrorScreen(),
        );
      },
    );
  }
}
