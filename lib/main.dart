import 'package:awesome_app/src/login/LoginWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Color(0xFFFFF65E5c)),
      home: LoginWidget()
    );
  }
}

