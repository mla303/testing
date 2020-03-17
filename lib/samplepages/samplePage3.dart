import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/welcome.dart';

class samplepage3 extends StatefulWidget {
  @override
  _samplepage1State createState() => _samplepage1State();
}

class _samplepage1State extends State<samplepage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("SAMPLE PAGE 3",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
            color: Colors.white,
          ),),
          FlatButton(
            color: Colors.pinkAccent,
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => welcome()));
            },
            child: Text("Done",style: TextStyle(
              color: Colors.white,
              letterSpacing: 2
            ),),
          )
        ],
      ),
    );
  }
}
