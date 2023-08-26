import 'package:flutter/material.dart';
import 'package:xylophone/theme.dart';
import 'package:xylophone/xylophone.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Xylophone";
  Brightness brightness = Brightness.dark;

  toggleTheme() {
    setState(() {
      brightness = brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme(brightness),
      home: Xylophone(title: title, toggleTheme: toggleTheme),
    );
  }
}
