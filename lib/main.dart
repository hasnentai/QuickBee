import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_dis/facebook.dart';
import 'package:flutter_app_dis/login.dart';
import 'package:flutter_app_dis/splashscreen.dart';

ThemeData buildTheme() {
  final ThemeData base = ThemeData();

  return base.copyWith(
    primaryColor: Color(0XFFCCCCCC),
    indicatorColor: Color(0xFFCCCCCC),
    hintColor: Colors.black45,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: new TextStyle(color: Colors.red),
      labelStyle: TextStyle(
        color: Color(0XFFCCCCCC),
      ),
    ),
  );
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarIconBrightness: Brightness.dark));
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: buildTheme(),
      home: new SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          width: double.infinity,
          child: Container(
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.all(30.0),
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
                  padding: const EdgeInsets.only(top: 30.0),
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
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(29.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                              color: Color(0XFF29D091),
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            child: RawMaterialButton(
                              onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()),
                                    ): RawMaterialButton()
                                  },
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: new Text(
                                  "Sign In with Email",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                              color: Color(0XFF45659F),
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            child: RawMaterialButton(
                              onPressed: () => {
                                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AnimationOnPage()),
                                    ): RawMaterialButton()
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: new Text(
                                  "Facebook",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: new Container(
                            decoration: new BoxDecoration(
                              color: Color(0XFFDD5241),
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            child: RawMaterialButton(
                              onPressed: () => {print('Google'): debugPrint},
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: new Text(
                                  "Google",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
