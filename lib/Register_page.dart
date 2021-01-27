import 'package:flutter/material.dart';
import 'home.dart';


class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
        //resizeToAvoidBottomPadding: false,
      ),
      body: Center(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFF18D191)),
                    child: new Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(right: 55.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Colors.red),
                    child: new Icon(
                      Icons.flight_takeoff,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFFFFCE56)),
                    child: new Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(left: 90.0, top: 30.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFF45E0EC)),
                    child: new Icon(
                      Icons.place,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                    child: new Text(
                      "Place Next",
                      style: new TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  )
                ],
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
                child: new TextField(
                  decoration: new InputDecoration(
                    labelText: 'Name'
                  ),
                ),
              ),

              new SizedBox(
                height: 8.0,
              ),

               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
                child: new TextField(
                  decoration: new InputDecoration(
                    labelText: 'Phone No.'
                  ),
                ),
              ),

              new SizedBox(
                height: 8.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
                child: new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: 'Password'
                  ),
                ),
              ),

              new SizedBox(
                height: 8.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
                child: new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: 'Confirm Password'
                  ),
                ),
              ),


              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 10.0, top: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text(
                            "Register",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // new Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             left: 20.0, right: 5.0, top: 10.0),
              //         child: new Container(
              //           alignment: Alignment.center,
              //           height: 60.0,
              //           decoration: new BoxDecoration(
              //               color: Color(0xFF4364A1),
              //               borderRadius: new BorderRadius.circular(10.0)),
              //           child: new Text(
              //             "Facebook",
              //             style:
              //                 new TextStyle(fontSize: 20.0, color: Colors.white),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             left: 10.0, right: 10.0, top: 10.0),
              //         child: new Container(
              //           alignment: Alignment.center,
              //           height: 60.0,
              //           decoration: new BoxDecoration(
              //               color: Color(0xFFDF513B),
              //               borderRadius: new BorderRadius.circular(10.0)),
              //           child: new Text(
              //             "Google",
              //             style:
              //                 new TextStyle(fontSize: 20.0, color: Colors.white),
              //           ),
              //         ),
              //       ),
              //     )
                //],
             // )
            ],
          ),
        ),
      ),
    );
    
  }
}
