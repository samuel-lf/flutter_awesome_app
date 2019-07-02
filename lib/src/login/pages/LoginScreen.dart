import 'package:awesome_app/src/login/widgets/CircleButton.dart';
import 'package:awesome_app/src/login/widgets/customTextField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Widget _textForgot(context) {
  return Container(
    width: double.infinity,
    child: Text("Forgot Password?",
        textAlign: TextAlign.right,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).accentColor,
        )),
  );
}

Widget _lineTextLine() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Divider(
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "OR CONNECT WITH",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        child: Divider(
          color: Colors.black,
        ),
      )
    ],
  );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
          ),
          CustomTextField(
            label: "EMAIL",
            hint: "email@email.com",
          ),
          Container(
            height: 25,
          ),
          CustomTextField(
            label: "PASSWORD",
            hint: "********",
          ),
          Container(
            height: 25,
          ),
          _textForgot(context),
          Container(
            height: 40,
          ),
          CircleButton(
            label: "LOGIN",
          ),
          Container(
            height: 40,
          ),
          _lineTextLine(),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: CircleButton(
                  backgroundColor: Colors.blue[900],
                  label: "FACEBOOK",
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              Container(
                width: 50,
              ),
              Expanded(
                child: CircleButton(
                  backgroundColor: Colors.red[600],
                  label: "GOOGLE",
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
