import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  @override
  _ResultPageState createState() => new _ResultPageState();

}
class _ResultPageState extends State<ResultPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
        backgroundColor: Colors.black87,
      ),
        body:
    new Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Colors.black ,Colors.white
    ]
    )
    ),
        child: ListView(
    padding: EdgeInsets.all(10),
      children: <Widget>[

      SizedBox(
      height: 430,
      width: 300,
        child: Column(

            children: <Widget>[
           //IMAGE GOES HERE
            ]
          ),
        ),
        Container(
        height: 80,
        width: 150,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple,  Colors.white,Colors.white,Colors.purple,],
            ),borderRadius: BorderRadius.circular(66)
        ),
          child: Text("OBJECT NAME",
            style: TextStyle(
                fontSize: 40.0
            ),
          ),
          alignment: Alignment(0.0, 0.0),
        ),
        SizedBox(
          height: 15,
          width: 20,),
        Container(
          height: 80,
          width: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepOrangeAccent],
              ),borderRadius: BorderRadius.circular(30)
          ),
          child: Text("CARBON FOOTPRINT",
            style: TextStyle(
                fontSize: 29.0
            ),
          ),
          alignment: Alignment(0.0, 0.0),
        ),
        Text("How to reduce Carbon Emmision?",
          style: TextStyle(fontWeight: FontWeight.bold,height: 3, fontSize: 20),),
        Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200.0,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/carbon1.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),

                ),
          SizedBox(
            height: 20,
            width: 20,),
                Container(
                  width: 200.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/carbon2.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                  width: 20,),
                Container(
                  width: 200.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/carbon3.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                  width: 20,),
                Container(
                  width: 200.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/carbon4.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                  width: 20,),
              ],
            ),
        )

      ]
        )
    ),


    );

  }
}
