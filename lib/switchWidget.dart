
import 'package:flutter/material.dart';

enum WidgetMarker{
red,pink,yellow,play,pause
}


/// This Widget is the main application widget.
class SwitchingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: MyStatefulWidget(),

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  WidgetMarker selectedwidgetMarker = WidgetMarker.red;
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  setState(() {
                    selectedwidgetMarker = WidgetMarker.red;
                  });

                },
                child: Text("red",style: TextStyle(color: (selectedwidgetMarker == WidgetMarker.red) ? Colors.red :Colors.black12),),
              ),
              FlatButton(
                onPressed: (){
                  setState(() {
                    selectedwidgetMarker = WidgetMarker.pink;
                  });

                },
                child: Text("pink",style: TextStyle(color: (selectedwidgetMarker == WidgetMarker.pink) ? Colors.pink :Colors.black12),),

              ),
              FlatButton(
                onPressed: (){
                  setState(() {
                    selectedwidgetMarker = WidgetMarker.yellow;
                  });


                },
                child: Text("yellow",style: TextStyle(color: (selectedwidgetMarker == WidgetMarker.yellow) ? Colors.yellow :Colors.black12),),

              ),

              FlatButton(
                onPressed: ()
                {
                  if(change = !change)
                    {
                      setState(() {
                        selectedwidgetMarker = WidgetMarker.play;
                      });
                    }
                  else{
                    setState(() {
                      selectedwidgetMarker = WidgetMarker.pause;
                    });
                  }

                },
                child: change ? new Icon(Icons.pause): new Icon(Icons.play_arrow) ,
              )




            ],
          ),
          Container(
            height: 200,
            color: Colors.red,
            child: getCustomContainor(),
          )
        ],
      ),
    );
  }

  Widget getCustomContainor()
  {
    switch (selectedwidgetMarker)
    {
      case WidgetMarker.red:
      return getRedContainer();
      case WidgetMarker.pink:
        return getPinkContainer();
      case WidgetMarker.yellow:
        return getYellowContainer();
      case WidgetMarker.play:
        return play();
      case WidgetMarker.pause:
        return pause();
    }
    return getRedContainer();
  }

  Widget getRedContainer()
  {
    return Container(
      color: Colors.red,
      height: 200,
    );
  }

  Widget getPinkContainer()
  {
    return Container(
      color: Colors.pink,
      height: 200,
    );
  }

  Widget getYellowContainer()
  {
    return Container(
      color: Colors.yellow,
      height: 200,
    );
  }

  Widget play()
  {
    return Container(
      color: Colors.black38,
      height: 200,
      width: 300,
      child: Text("Play",style: TextStyle(color: Colors.white),),
    );
  }

  Widget pause()
  {
    return Container(
      color: Colors.yellowAccent,
      height: 200,
      //child: Text("Pause"),
    );
  }



}