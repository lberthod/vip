import 'package:flutter/material.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import './userData.dart';

class Equipe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EquipeState();
  }
}

class EquipeState extends State<Equipe> {
  FirestoreService<Player> db = new FirestoreService<Player>('joueur');
  StreamSubscription<QuerySnapshot> noteSub;

  List<Player> items;

  @override
  void initState() {
    super.initState();

    items = new List();

    noteSub?.cancel();
    noteSub = db.getList().listen((QuerySnapshot snapshot) {
      final List<Player> player = snapshot.documents
          .map((documentSnapshot) => Player.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.items = player;
      });
    });

    int temp = 0;
    for (var name in items) {
      if (name.name == username) {
        indexPlayer = temp;
      }
      temp++;
    }
  }

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
          body: new Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Text(
                    "VOS EXPERTS : ",
                    style: new TextStyle(fontSize: 25.0),
                  ),
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "3 = Recruté avec une puissance 3  / 2 = Recruté avec une puissance 2 / 1 = A refusé de vous rejoindre / 0 = A découvrir"),
                  ),
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Text(
                    "Marketing : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "Diana : " + items[indexPlayer].diana,
                            style: new TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          new Text(
                            "Mathilde : " + items[indexPlayer].mathilde,
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Text(
                            "Manon : " + items[indexPlayer].manon + "   ",
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Comptabilité : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Nicolas : " + items[indexPlayer].nicolas,
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Léonard : " + items[indexPlayer].leonard,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Text(
                          "Pastora : " + items[indexPlayer].pastora + "   ",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Achats : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Marc : " + items[indexPlayer].marc,
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Emilie : " + items[indexPlayer].emilie,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Text(
                          "Tatiana : " + items[indexPlayer].tatiana + "   ",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Administration : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Katrine : " + items[indexPlayer].katrine,
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Samuel : " + items[indexPlayer].samuel,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Text(
                          "Mariana : " + items[indexPlayer].mariana + "   ",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Ressources humaines : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Fatou : " + items[indexPlayer].fatou,
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Kim : " + items[indexPlayer].kim,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Text(
                          "Florian : " + items[indexPlayer].florian + "   ",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Vente : ",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Nivine : " + items[indexPlayer].nivine,
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Loïc : " + items[indexPlayer].loic,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Text(
                          "Anne : " + items[indexPlayer].anne + "   ",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  //image
                  new Padding(padding: EdgeInsets.all(.0)),

                  new Padding(padding: EdgeInsets.all(10.0)),

                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: new Text(
                      "Retour",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
