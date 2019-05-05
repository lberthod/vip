import 'package:flutter/material.dart';
import 'package:vip/model/player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class Reviz extends StatefulWidget{

  final Player player;
  Reviz(this.player);

  @override
  State<StatefulWidget> createState() {
    return new RevizState();
  }
}

class RevizState extends State<Reviz> {
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
                new Padding(padding: EdgeInsets.all(10.0)),

                new Container (
                  alignment: Alignment.center,

                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("Reviz'Dex",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                    ],
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("Le reviz'dex n'a pas réussi à être implémenté",
                  style: new TextStyle(
                      fontSize: 15.0
                  ),),
                //image
                new Padding(padding: EdgeInsets.all(10.0)),



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