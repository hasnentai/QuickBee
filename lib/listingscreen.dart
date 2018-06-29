import 'dart:ui';

import 'package:flutter/material.dart';
import 'details.dart';

class ListScreen extends StatefulWidget {
  @override
  _FavoriteWidgetState1 createState() => new _FavoriteWidgetState1();
}

class _FavoriteWidgetState1 extends State<ListScreen> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        fixedColor: Color(0XFF29D091),
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.card_travel), title: new Text('')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.local_offer), title: new Text('')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text('')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.list), title: new Text('')),
        ],
      ),
      backgroundColor: Color(0XFFFAFAFA),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0XFF29D091)),
      ),
      body: new MainListScreen(),
    );
  }
}

class MainListScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    List cardsList = new List.generate(20, (i) => new NewList());
    return new ListView(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: new Text(
                  "Properties",
                  style: new TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()),
                          ): GestureDetector,
                        },
                    child: new NewList()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()),
                          ): GestureDetector,
                        },
                    child: new NewList()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()),
                          ): GestureDetector,
                        },
                    child: new NewList()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()),
                          ): GestureDetector,
                        },
                    child: new NewList()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()),
                          ): GestureDetector,
                        },
                    child: new NewList()),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class NewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new Container(
              width: 90.0,
              height: 90.0,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(5.0),
                  image: new DecorationImage(
                      image: new NetworkImage(
                          'https://images.unsplash.com/photo-1504113997323-b989c1635896?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5e16582d2b6797778c21289ba163b8c8&auto=format&fit=crop&w=1650&q=80'),
                      fit: BoxFit.cover)),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    '2 BedRoom Apertment',
                    style: new TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    '178 Jasper Avenue #22A',
                    style: new TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Text(
                    '\$1,120',
                    style: new TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFEFAD61),
                        fontSize: 29.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
