import 'package:awesome_app/src/login/provider/ProviderPageController.dart';
import 'package:awesome_app/src/login/widgets/CircleButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.95),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
          ),
          Icon(
            Icons.headset_mic,
            size: 40,
            color: Colors.white,
          ),
          Container(
            height: 25,
          ),
          RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: "Awesome",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  TextSpan(
                    text: "App",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          Container(
            height: 120,
          ),
          CircleButton(
            label: "SIGN UP",
            borderColor: Colors.white,
            onTap: () {
              ProviderPageController.of(context).toPage(0);
            },
          ),
          Container(
            height: 30,
          ),
          CircleButton(
            label: "LOGIN",
            backgroundColor: Colors.white,
            textColor: Theme.of(context).accentColor,
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
          )
        ],
      ),
    );
  }
}
