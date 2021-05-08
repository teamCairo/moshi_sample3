import 'package:flutter/material.dart';
import 'package:moshi_sample3/root.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter_signin_button/button_builder.dart';

//import './register_page.dart';
//import './signin_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '模試サンプル',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue[300],
      ),
      home:  RootWidget(),
    );
  }
}