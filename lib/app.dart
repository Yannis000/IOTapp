import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ui/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      title: 'IoT',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Alarme connectée'),
      );
  }
}