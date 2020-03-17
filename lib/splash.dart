import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 3000);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: new Container(
        color: Color(0xff2BBE77),
        //fit: ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Container(
              height: height/2,
              width: width,
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(height: height/19,),
            Container(
//              decoration: BoxDecoration(
//                  color: Colors.transparent
//              ),
              child: Text(
                'TESTING APP',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: height / 30),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: new SpinKitWanderingCubes(
                  color: Color(0xffF18220),
                  size: 50,
                )
            ),

          ],
        ),
      ),
    );
  }
}
