import 'package:flutter/material.dart';


class Refus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AideState();
  }
}

class AideState extends State<Refus> {
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
                new Padding(padding: EdgeInsets.all(25.0)),

                Image(
                  image: AssetImage("assets/image/error.jpg"),
                ),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Text("Ce QR code a déjà été scanné.",
                  style: new TextStyle(
                      fontSize: 22.0
                  ),),
                new Padding(padding: EdgeInsets.all(15.0)),

                new Text("Essaie un autre...",
                  style: new TextStyle(
                      fontSize: 24.0
                  ),),

                //image
                new Padding(padding: EdgeInsets.all(15.0)),

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