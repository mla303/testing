import 'package:flutter/material.dart';

class samplepage5 extends StatefulWidget {
  @override
  _samplepage1State createState() => _samplepage1State();
}

class _samplepage1State extends State<samplepage5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(
        child: Text("SAMPLE PAGE 5",
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 20,
            color: Colors.white,
        ),),
      ),
    );
  }
}
