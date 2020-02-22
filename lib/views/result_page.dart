import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => new _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  set _videoController(VideoPlayerController _videoController) {}

  List<Widget> advice = [
    Column(children: <Widget>[
      Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: Image.network(
              'https://media.giphy.com/media/3og0ILgFOEXIL8Bsn6/giphy.gif')),
      Text(
        "Digesters reduce emissions by converting methane emissions that would have arisen under other methods of manure disposal into less-powerful CO2 and by generating energy that replaces CO2 emissions that would have come from fossil fuel based electricity.",
        style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 18),
      )
    ]),
    Column(children: <Widget>[
      Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: Image.network(
              'https://www.blinkmarine.com/up/2014/03/Electric-vehicle-Autonomous-vehicle.gif')),
      Text(
          "One study found that emissions from EVs have emissions up to 43% lower than diesel vehicles. Another detailed that “in all cases examined, electric cars have lower lifetime climate impacts than those with internal combustion engines”.",
        style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 18),)
    ]),
    Column(children: <Widget>[
      Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: Image.network(
              'https://www.anthropocenemagazine.org/wp-content/uploads/2018/04/phone-fire3.gif')),
      Text(
          "Making a phone accounts for 85–95 percent of its annual carbon footprint because manufacturing its electronics and mining the metals that go into them is energy-intensive..",
        style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 18),)
    ]),
    Column(children: <Widget>[
      Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 150.0,
          child: Image.network(
              'https://i.pinimg.com/originals/b8/e5/2e/b8e52e26d4211e2ac09456b4f0f3c10f.gif')),
      Text(
          "In total, riding your bike accounts for about 21 g of CO2 emissions per kilometer – again, more than ten times less than a car! And there is room for improvement as well.",
        style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 18),)
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
        backgroundColor: Colors.green,
      ),
      body: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white])),
          child: ListView(padding: EdgeInsets.all(10), children: <Widget>[
            SizedBox(
              height: 430,
              width: 300,
              child: Column(children: <Widget>[
                //IMAGE GOES HERE
              ]),
            ),
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.greenAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(66)),
              child: Text(
                "OBJECT NAME",
                style: TextStyle(fontSize: 40.0),
              ),
              alignment: Alignment(0.0, 0.0),
            ),
            SizedBox(
              height: 15,
              width: 20,
            ),
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.greenAccent, Colors.green],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "CARBON FOOTPRINT",
                style: TextStyle(fontSize: 29.0),
              ),
              alignment: Alignment(0.0, 0.0),
            ),
            Text(
              "How to reduce Carbon Emmision?",
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 3, fontSize: 22),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 500.0,
                child: advice[1])
          ])),
    );
  }
}
