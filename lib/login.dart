import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainpage.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarIconBrightness: Brightness.light));
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0XFF29D091)),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(38.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: new EdgeInsets.all(0.0),
                      child: new Stack(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 94.0, left: 50.0),
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
                            padding:
                                const EdgeInsets.only(top: 120.0, left: 10.0),
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
                            padding:
                                const EdgeInsets.only(top: 125.0, left: 50.0),
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
                            padding:
                                const EdgeInsets.only(top: 125.0, left: 80.0),
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
                        padding: const EdgeInsets.only(top: 25.0, bottom: 14.0),
                        child: new TextField(
                          decoration: new InputDecoration(
                              labelText: 'E-mail Address',
                              labelStyle:
                                  new TextStyle(fontWeight: FontWeight.w700)),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: new TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                                new TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: GestureDetector(
                            onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FavoriteWidget()),
                                  ): GestureDetector,
                                },
                            child: new Container(
                              padding: new EdgeInsets.all(19.0),
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  color: Color(0XFF29D091)),
                              child: new Text(
                                'Sign-In',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Container(
                            padding: new EdgeInsets.all(19.0),
                            child: GestureDetector(
                              onTap: () => {print("hello"): GestureDetector},
                              child: new Text(
                                'Forgot Password ?',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: Color(0XFF29D091),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
