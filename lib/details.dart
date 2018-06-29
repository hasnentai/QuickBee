import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  Widget _headerBuilder() {
    return new Container(
      height: 300.0,
      width: double.infinity,
      decoration: new BoxDecoration(
          image: new DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.multiply),
              image: new NetworkImage(
                  'https://images.unsplash.com/photo-1511559960991-7ec686a6d903?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d15be54ac6fb54a204bec019de881c57&auto=format&fit=crop&w=1414&q=80'),
              fit: BoxFit.cover)),
    );
  }

  Widget _backbutton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 44.0,
          )
        ],
      ),
    );
  }

  Widget _textOnImage() {
    return Positioned(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 140.0),
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Text(
                '\$1,120',
                style: new TextStyle(color: Colors.white, fontSize: 44.0),
                textAlign: TextAlign.center,
              ),
              new Text(
                '178 Jasper Avenue #22A',
                style: new TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Padding(
      padding: const EdgeInsets.only(top: 250.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: new EdgeInsets.all(20.0),
              child: new RawMaterialButton(
                padding:
                    new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                onPressed: () => {},
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    new Text(
                      "Call",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                fillColor: Color(0XFF2BD093),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: new EdgeInsets.all(20.0),
              child: new RawMaterialButton(
                padding:
                    new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                onPressed: () => {},
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    new Text(
                      "Message",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                fillColor: Color(0XFFFC7B4D),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardBuilder() {
    return new Container(
      width: double.infinity,
      padding: new EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
          color: Colors.white, borderRadius: new BorderRadius.circular(5.0)),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            "2 Bed Room Apartment",
            style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 20.0,
                color: Color(0XFFFDC42D),
              ),
              new Icon(
                Icons.star,
                size: 20.0,
                color: Color(0XFFFDC42D),
              ),
              new Icon(
                Icons.star,
                size: 20.0,
                color: Color(0XFFFDC42D),
              ),
              new Icon(
                Icons.star,
                size: 20.0,
                color: Color(0XFFFDC42D),
              ),
              new Icon(
                Icons.star_border,
                size: 20.0,
                color: Color(0XFFFDC42D),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: new Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
              textAlign: TextAlign.justify,
              style: new TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }

  Widget _imageCardBuilder() {
    return new Container(
      width: double.infinity,
      padding: new EdgeInsets.all(0.0),
      decoration: new BoxDecoration(
          color: Colors.white, borderRadius: new BorderRadius.circular(5.0)),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Container(
              margin: new EdgeInsets.all(5.0),
              height: 100.0,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          'http://www.whoa.in/20140224-Whoa/Amazing-House-in-Amazing-Place-HD-Wallpaper.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.black),
            ),
          ),
          new Expanded(
            child: new Container(
              margin: new EdgeInsets.all(5.0),
              height: 100.0,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          'https://wallpaper-house.com/data/out/8/wallpaper2you_244844.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.black),
            ),
          ),
          new Expanded(
            child: new Container(
              margin: new EdgeInsets.all(5.0),
              height: 100.0,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          'http://www.whoa.in/20140224-Whoa/Amazing-House-in-Amazing-Place-HD-Wallpaper.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      body: new ListView(
        children: <Widget>[
          new Container(
            child: new Column(
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    _headerBuilder(),
                    GestureDetector(
                      onTap: () =>{

                        Navigator.pop(context):GestureDetector
                      },
                      child: _backbutton()),
                    _textOnImage(),
                    _buttons()
                  ],
                ),
                new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Column(
                    children: <Widget>[_cardBuilder(), _imageCardBuilder()],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
