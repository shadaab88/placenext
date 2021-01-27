import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //navigation bar
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
           _bottomNavIndex =index; 
          });
        },
        
        items: [
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.local_offer)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.notifications)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.list)
          )
        ],
      ),
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style: new TextStyle(fontSize: 30.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: new Container(
                    height: 100.0,
                    decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0),
                          color: Color(0xFFFD7384)),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.drive_eta,
                            color: Colors.white,
                          ),
                          new Text("Near",
                              style: new TextStyle(color: Colors.white))
                        ],
                    ),
                  ),
                      )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.5,right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                color: Color(0XFF2BD093),
                                borderRadius: new BorderRadius.circular(5.0)
                              ),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: new Icon(Icons.local_offer,color: Colors.white),
                                  ),
                                  new Text("Classified",style: new TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5,right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                color: Color(0XFFFC7B4D),
                                borderRadius: new BorderRadius.circular(5.0)
                              ),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: new Icon(Icons.beenhere,color: Colors.white),
                                  ),
                                  new Text("Service",style: new TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.5,left: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                color: Color(0XFF53CEDB),
                                borderRadius: new BorderRadius.circular(5.0)
                              ),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: new Icon(Icons.account_balance,color: Colors.white),
                                  ),
                                  new Text("Forts",style: new TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5,left: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                color: Color(0XFFF1B069),
                                borderRadius: new BorderRadius.circular(5.0)
                              ),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: new Icon(Icons.art_track,color: Colors.white),
                                  ),
                                  new Text("Most Like",style: new TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
//second block start
              Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text("Places you want to go!" ,style: new TextStyle(fontSize: 16.0),),
                  ),
                  new Expanded(
                    child: new Text("View all" ,style: new TextStyle(color: Color(0XFF2BD093)),textAlign: TextAlign.end,
                  ))
                ],
              ),

              new SizedBox(
                height: 15.0,
              ),


              Row(children: <Widget>[
                //first expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://in.bmscdn.com/nmcms/media-base-wonderla-amusement-park-hyderabad-2019-2-19-t-20-14-8.png'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Wonderla Amusement Park",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),
                new SizedBox(
                  width: 5.0,
                ),
                //second expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-8g3v7ecvhb20u2tbbn4cdl1bn0-20180828015835.Medi.jpeg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Char Minar",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),

                 new SizedBox(
                  width: 5.0,
                ),
                //third expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://nalsar.ac.in/idi/wp-content/uploads/2017/02/ramoji-film-city-hyderabad.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Ramoji Film City",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                )
              ],),
              //second block end
              //third block start
               Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text("Suggestion for you!" ,style: new TextStyle(fontSize: 16.0),),
                  ),
                  new Expanded(
                    child: new Text("View all" ,style: new TextStyle(color: Color(0XFF2BD093)),textAlign: TextAlign.end,
                  ))
                ],
              ),

              new SizedBox(
                height: 15.0,
              ),


              Row(children: <Widget>[
                //first expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://scontent.fbom4-2.fna.fbcdn.net/v/t31.0-0/p180x540/12045435_1058043230894982_5932345768165510245_o.jpg?_nc_cat=111&_nc_ht=scontent.fbom4-2.fna&oh=d6b1dfbcce9fde815aab294f5853744a&oe=5CEE64A0'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("fish-shaped building",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),
                new SizedBox(
                  width: 5.0,
                ),
                //second expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCnq3nQ4jFljF5wr-EZW6ol0r8l8hxgAVe2GkxDCmIvFbJLDyv'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Amrutha Castle",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),

                 new SizedBox(
                  width: 5.0,
                ),
                //third expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Falaknuma_Palace/images/16x7/AAG_Pool-16x7.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Taj Falaknuma Palace",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                )
              ],),
              //third block end
              //fourth block start
              Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text("Places near you!" ,style: new TextStyle(fontSize: 16.0),),
                  ),
                  new Expanded(
                    child: new Text("View all" ,style: new TextStyle(color: Color(0XFF2BD093)),textAlign: TextAlign.end,
                  ))
                ],
              ),

              new SizedBox(
                height: 15.0,
              ),


              Row(children: <Widget>[
                //first expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/02/415.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Qutb Shahi Tombs",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),
                new SizedBox(
                  width: 5.0,
                ),
                //second expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/02/316.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Mecca Masjid",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),

                 new SizedBox(
                  width: 5.0,
                ),
                //third expanded
                new Expanded(
                  child: Container(
                    height: 180.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                              image: new NetworkImage('https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/02/230.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        new Text("Golkonda Fort",style: new TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                )
              ],)
              //fourth block end
            ],
          )),
        )
      ],
    );
  }
}
