import 'package:awesome_app/src/login/pages/HomeScreen.dart';
import 'package:awesome_app/src/login/pages/LoginScreen.dart';
import 'package:awesome_app/src/login/pages/SingUpScreen.dart';
import 'package:awesome_app/src/login/provider/ProviderPageController.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/img/montanha.jpg",
            fit: BoxFit.cover,
          ),
          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                SingUpScreen(),
                HomeScreen(),
                LoginScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
