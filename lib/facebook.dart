import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_dis/login.dart';
import 'package:flutter_app_dis/pagervl.dart';

class AnimationOnPage extends StatefulWidget {
  @override
  _AnimationOnPageState createState() => new _AnimationOnPageState();
}

class _AnimationOnPageState extends State<AnimationOnPage>
    with SingleTickerProviderStateMixin {
  AnimationController animation;
  @override
  void initState() {
    super.initState();
    animation = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    animation.addListener(() {
      this.setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [Color(0XFF7452BC), Color(0XFF2C52A7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('res/img/bg.png'),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.redAccent.withOpacity(0.1), BlendMode.dstATop),
                    )),
                    child: new Opacity(
                      opacity: 0.1,
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: new Text(
                            'Connect And Share',
                            style: new TextStyle(
                                fontSize: 35.0,
                                fontFamily: 'Facebook',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: new Text(
                            'ON',
                            style: new TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 75.0,
                                fontFamily: 'Facebook',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                        child: Opacity(
                          opacity: 1.0,
                          child: new Text(
                            'facebook',
                            style: new TextStyle(
                                fontSize: 55.0,
                                fontFamily: 'Facebook',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 10.0),
                        child: Opacity(
                          opacity: 0.2,
                          child: new Text(
                            'WITH',
                            style: new TextStyle(
                                fontSize: 40.0,
                                fontFamily: 'Facebook',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 10.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: new Text(
                            'PEOPLE',
                            style: new TextStyle(
                                fontSize: 85.0,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'Facebook',
                                fontStyle: FontStyle.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 10.0),
                        child: Opacity(
                          opacity: 0.6,
                          child: new Text(
                            'IN YOUR LIFE',
                            style: new TextStyle(
                                fontSize: 46.0,
                                fontFamily: 'Facebook',
                                fontStyle: FontStyle.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 58.0),
                            child: new RaisedButton(
                              color: Colors.redAccent,
                              onPressed: () =>
                                  {animation.forward(from: 0.0): Animatable},
                              child: new Text(
                                'Login',
                                style: new TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ),
        PageReveal(
            revealPercent: animation.value * 1.3, child: new LoginScreen()),
      ],
    ));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }
}
