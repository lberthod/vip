import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/userData.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'dart:async';

List<DocumentSnapshot> fixedLengthList = new List();

class ClassementNiveau extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ClassementState();
  }
}

class user {
  int id;
  String name;
  int score;

  user({this.id, this.name, this.score});
}

class ClassementState extends State<ClassementNiveau> {
  StreamSubscription<QuerySnapshot> jouerSub;
  int index = 0;
  List<Player> joueurs;
  String ma = "NO";

  static void tri_bulle(List<Player> tab) {
    int taille = tab.length;
    Player p = new Player();
    for (int i = 0; i < taille; i++) {
      for (int j = 1; j < (taille - i); j++) {
        if (int.parse(tab[j - 1].niveau) < int.parse(tab[j].niveau)) {
          //echanges des elements
          p = tab[j - 1];
          tab[j - 1] = tab[j];
          tab[j] = p;
        }
      }
    }
  }

  static void displayTab(List<Player> tab) {
    for (int i = 0; i < tab.length; i++) {
      print(tab[i].score + " ");
    }
  }

  void initState() {
    super.initState();
    joueurs = new List();
    FirestoreService<Player> dbj = new FirestoreService<Player>('joueur');

    jouerSub?.cancel();
    jouerSub = dbj.getList().listen((QuerySnapshot snapshot) {
      final List<Player> pl = snapshot.documents
          .map((documentSnapshot) => Player.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.joueurs = pl;
        print(pl[0].score + "_");

        pl.sort((a, b) {
          return a.score.compareTo(b.score);
        });

        displayTab(joueurs);
        tri_bulle(joueurs);
        displayTab(joueurs);
        for (var n in joueurs) {}

        print(pl);
      });
    });
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
            padding: const EdgeInsets.all(20),
            child: new SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[


                        new Text(
                          "Classement - Niveau",
                          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  //image
                  new Padding(padding: EdgeInsets.all(13.0)),


                  new Text(
                    "1ère Place",
                    style: TextStyle(fontSize: 30),
                  ),
                  new Padding(padding: EdgeInsets.all(6.0)),

                  new Text(
                    joueurs[0].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  new Padding(padding: EdgeInsets.all(11.0)),

                  new Text(
                    "2ème Place",
                    style: TextStyle(fontSize: 28),
                  ),
                  new Padding(padding: EdgeInsets.all(6.0)),

                  new Text(
                    joueurs[1].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  new Padding(padding: EdgeInsets.all(11.0)),


                  new Text(
                    "3ème Place",
                    style: TextStyle(fontSize: 26),
                  ),
                  new Padding(padding: EdgeInsets.all(6.0)),

                  new Text(
                    joueurs[2].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  new Padding(padding: EdgeInsets.all(11.0)),

                  new Text(
                    "4ème Place",
                    style: TextStyle(fontSize: 25),
                  ),
                  new Padding(padding: EdgeInsets.all(6.0)),

                  new Text(
                    joueurs[3].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  new Padding(padding: EdgeInsets.all(13.0)),


                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/classement');
                      print(joueurs[0].score);
                    },
                    child: new Text(
                      "Revenir en arrière",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget text(BuildContext context, Player p) {
    return new Text("fd");
  }
}
