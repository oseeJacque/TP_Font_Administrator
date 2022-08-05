import 'package:flutter/material.dart';

import 'HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color:Color.fromARGB(128, 255, 255, 255) ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}