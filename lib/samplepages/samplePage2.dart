import 'package:flutter/material.dart';

class samplepage2 extends StatefulWidget {
  @override
  _samplepage1State createState() => _samplepage1State();
}

class _samplepage1State extends State<samplepage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Center(
        child: Text("SAMPLE PAGE 2",
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 20,
          color: Colors.white,
        ),),
      ),
    );
  }
}
