import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_dis/main.dart';
import 'details.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => {
              print("Done"): Duration(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              ): GestureDetector,
            });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        width: double.infinity,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.all(0.0),
              child: new Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 94.0, left: 50.0),
                    child: new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        color: Color(0XFF2BD392),
                        borderRadius: new BorderRadius.circular(100.0),
                      ),
                      child: new Icon(
                        Icons.local_offer,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0, left: 10.0),
                    child: new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        color: Color(0XFF4FE0EB),
                        borderRadius: new BorderRadius.circular(100.0),
                      ),
                      child: new Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125.0, left: 50.0),
                    child: new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        color: Color(0XFFFDCD60),
                        borderRadius: new BorderRadius.circular(100.0),
                      ),
                      child: new Icon(
                        Icons.local_car_wash,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125.0, left: 80.0),
                    child: new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        color: Color(0XFFFC7A8E),
                        borderRadius: new BorderRadius.circular(100.0),
                      ),
                      child: new Icon(
                        Icons.pin_drop,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90.0, top: 10.0),
              child: new Text(
                "QuickBee",
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.0,
                    color: Colors.black,
                    wordSpacing: 3.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
