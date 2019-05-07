import 'package:flutter/material.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class ExpertFin extends StatefulWidget{

  final Player player;
  ExpertFin(this.player);

  @override
  State<StatefulWidget> createState() {
    return new ExperFinState();
  }
}

class ExperFinState extends State<ExpertFin> {

  FirestoreService<Player> db = new FirestoreService<Player>('joueur');
  StreamSubscription<QuerySnapshot> noteSub;
  List<Player> items;

  @override
  void initState() {
    super.initState();

    items = new List();

    noteSub?.cancel();
    noteSub = db.getList().listen((QuerySnapshot snapshot) {
      final List<Player> notes = snapshot.documents
          .map((documentSnapshot) => Player.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.items = notes;
      });
    });
  }
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

                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text("Manon :" + items[0].manon),
                      new Padding(padding: EdgeInsets.all(8.0)),
                      new MaterialButton(
                          height: 50.0,
                          color: Colors.green,
                          onPressed:(){
                            Navigator.of(context).pushNamed('/');

                          },

                          child: new Text("Classement",
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white
                            ),)
                      ),        new Padding(padding: EdgeInsets.all(8.0)),
                      new Text("Reviz'Dex",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(.0)),




              ],
            ),
          ),

        )
      );
    }

}
