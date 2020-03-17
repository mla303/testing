import 'package:flutter/material.dart';

class samplepage1 extends StatefulWidget {
  @override
  _samplepage1State createState() => _samplepage1State();
}

class _samplepage1State extends State<samplepage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("SAMPLE PAGE 1",
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 20,
            color: Colors.white,
        ),),
      ),
    );
  }
}
