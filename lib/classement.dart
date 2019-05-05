import 'package:flutter/material.dart';


class Classement extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AideState();
  }
}

class AideState extends State<Classement> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: new AppBar(
            title: new Text("Go'Reviz"),
            backgroundColor: Colors.cyan,
            automaticallyImplyLeading: false,

          ),
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topRight,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(15.0)),
                new Padding(padding: EdgeInsets.all(15.0)),

new Text("Aller voir les classement ou revenir à l'accueil"),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Padding(padding: EdgeInsets.all(15.0)),

                new Container (
                  alignment: Alignment.center,

                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new MaterialButton(
                          height: 50.0,
                          color: Colors.green,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/classementS');
                          },
                          child: new Text(
                            "Classement Score",
                            style: new TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      new Padding(padding: EdgeInsets.all(8.0)),
                      new MaterialButton(
                          height: 50.0,
                          color: Colors.green,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/classementN');
                          },
                          child: new Text(
                            "Classement Niveau",
                            style: new TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      new Padding(padding: EdgeInsets.all(8.0)),

                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(.0)),

                new MaterialButton(
                  color: Colors.red,
                  onPressed: () {

                    Navigator.of(context).pushNamed('/');
                  },                child: new Text(
                  "Retour",

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