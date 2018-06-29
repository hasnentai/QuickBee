import 'dart:ui';

import 'package:flutter/material.dart';
import "listingscreen.dart";
class FavoriteWidget extends StatefulWidget{
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
  
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  int _bottomNavIndex=0;
   @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState((){
            _bottomNavIndex = index;
            
          });
          
        },
         fixedColor: Color(0XFF29D091),
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.card_travel),
            title: new Text('')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.local_offer),
            title: new Text('')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text('')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text('')
          ),
          
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0XFF29D091)),
      ),
      body: new MainListView(),
    );
  }
}
class MainListView extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return  ListView(
         children: <Widget>[
        new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Explore",
                style: new TextStyle(
                  fontSize: 33.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                        margin: new EdgeInsets.only(right: 5.0),
                        height: 100.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFFFD7384),
                            borderRadius: new BorderRadius.circular(5.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text(
                              'Motors',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                margin:
                                    new EdgeInsets.only(bottom: 2.5, right: 5.0),
                                decoration: new BoxDecoration(
                                    color: Color(0XFF2BD093),
                                    borderRadius: new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: new Icon(
                                        Icons.local_offer,
                                        color: Colors.white,
                                      ),
                                    ),
                                    new Text(
                                      'Classified',
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                margin: new EdgeInsets.only(top: 2.5, right: 5.0),
                                decoration: new BoxDecoration(
                                    color: Color(0XFFFC7B4D),
                                    borderRadius: new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: new Icon(
                                        Icons.beenhere,
                                        color: Colors.white,
                                      ),
                                    ),
                                    new Text(
                                      'Services',
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            new Expanded(
                              child: GestureDetector(
                                 onTap: ()=>{
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListScreen()),
                              ): GestureDetector,
                      },
                                child: new Container(
                                  margin: new EdgeInsets.only(bottom: 2.5),
                                  decoration: new BoxDecoration(
                                      color: Color(0XFF53CEDB),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: new Icon(
                                          Icons.account_balance,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text(
                                        'Properties',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                margin: new EdgeInsets.only(top: 2.5),
                                decoration: new BoxDecoration(
                                    color: Color(0XFFF1B069),
                                    borderRadius: new BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: new Icon(
                                        Icons.art_track,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    ),
                                    new Text(
                                      'Jobs',
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: new Text(
                      "Popular Trending",
                      style: new TextStyle(fontWeight: FontWeight.w600),
                    )),
                    Expanded(
                        child: new Text(
                      "See All",
                      style: new TextStyle(fontWeight: FontWeight.w600,color: Color(0XFF2BD093),),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top:10.0),
                child: new Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 140.0,
                        
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                         
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                 
                                image: new DecorationImage(
                                  image: new NetworkImage('https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Play Station")
                          ],
                        ),
                      ),
                    ),
                     new Expanded(
                      child: new Container(
                        height: 160.0,
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                
                                image: new DecorationImage(
                                  image: new NetworkImage('https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Jwellery & Watches",textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                     new Expanded(
                      child: new Container(
                        height: 140.0,
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                         
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                 border: new Border.all(),
                                image: new DecorationImage(
                                  image: new NetworkImage('http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Electronics")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: new Text(
                      "Featured Ads",
                      style: new TextStyle(fontWeight: FontWeight.w600),
                    )),
                    Expanded(
                        child: new Text(
                      "See All",
                      style: new TextStyle(fontWeight: FontWeight.w600,color: Color(0XFF2BD093),),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top:10.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 140.0,
                        
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                         
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                 
                                image: new DecorationImage(
                                  image: new NetworkImage('https://s1.cdn.autoevolution.com/images/gallery/LEXUS-HS-250h-3892_26.jpg'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Motors")
                          ],
                        ),
                      ),
                    ),
                     new Expanded(
                      child: new Container(
                        height: 160.0,
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                         
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                
                                image: new DecorationImage(
                                  image: new NetworkImage('https://d3tvpxjako9ywy.cloudfront.net/blog/content/uploads/2015/03/company-culture-why-it-matters.jpg?av=6219bb831e993c907ca622baef062556'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Jobs",textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                     new Expanded(
                      child: new Container(
                        height: 140.0,
                        margin: new EdgeInsets.only(right: 5.0),
                        decoration: new BoxDecoration(
                         
                          borderRadius: new BorderRadius.circular(5.0)
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                             width: double.infinity,
                             height: 100.0,
                              margin: new EdgeInsets.all(7.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                  image: new NetworkImage('https://s1.cdn.autoevolution.com/images/gallery/LEXUS-HS-250h-3892_26.jpg'),
                                 fit:BoxFit.cover
                                )
                              ),
                            ),
                            new Text("Electronics")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )],
      );
    }
}