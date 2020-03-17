import 'package:flutter/material.dart';

class samplepage4 extends StatefulWidget {
  @override
  _samplepage1State createState() => _samplepage1State();
}

class _samplepage1State extends State<samplepage4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text("SAMPLE PAGE 4",
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 20,
            color: Colors.white,
        ),),
      ),
    );
  }
}
