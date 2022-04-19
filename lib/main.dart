import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smart_gh/view/homescreen.dart';
import 'package:smart_gh/view/splashscreen.dart';

//Running Instance of Application
void main() {
  runApp(const smart_GH());
}

class smart_GH extends StatefulWidget {
  const smart_GH({Key? key}) : super(key: key);

  @override
  State<smart_GH> createState() => _smart_GHState();
}

class _smart_GHState extends State<smart_GH> {

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashScreen()
    );
  }
  
}

