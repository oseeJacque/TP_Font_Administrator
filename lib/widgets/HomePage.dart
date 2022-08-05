import 'package:flutter/material.dart';
import 'package:store1/widgets/inventory.dart';
import 'package:store1/widgets/overview.dart';
import 'package:store1/widgets/profil.dart';
import 'package:store1/widgets/profil2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(185, 255, 255, 255),
      
      body:Profil(),
    );
  }
}
