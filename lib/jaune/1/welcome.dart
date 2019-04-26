import 'package:flutter/material.dart';


class Expert1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new InfoState();
  }
}

class InfoState extends State<Expert1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topRight,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(15.0)),

                new Container (
                  alignment: Alignment.center,

                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("Défie l'expert : Raoul",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(.0)),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("Domaine : Marketing",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),


                new Text("Raoul est expert en marketing, depuis plus de 10 ans il travaille dans ce domaine.",
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),

                new MaterialButton(
                  color: Colors.red,
                  onPressed: () {

                    Navigator.of(context).pushNamed('/');
                  },                child: new Text(
                  "Commencer le duel",

                  style: new TextStyle(fontSize: 20.0, color: Colors.white),

                ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new MaterialButton(
                  color: Colors.red,
                  onPressed: () {

                    Navigator.of(context).pushNamed('/');
                  },                child: new Text(
                  "Refuser le défi",

                  style: new TextStyle(fontSize: 20.0, color: Colors.white),

                ),
                ),





              ],
            ),
          ),

        )
      );
    }



}

