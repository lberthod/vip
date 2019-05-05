import 'package:flutter/material.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'package:vip/model/expert.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import './userData.dart';

class RevizDexAd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EquipeState();
  }
}

class EquipeState extends State<RevizDexAd> {
  FirestoreService<Player> db = new FirestoreService<Player>('joueur');
  FirestoreService<Player> dbE = new FirestoreService<Player>('expert');
  StreamSubscription<QuerySnapshot> noteSub;
  StreamSubscription<QuerySnapshot> expSub;

  List<Player> items;
  List<Expert> exps;

  var questMarketing = [
    //  "Un animal s’approche de vous...",
  ];

  @override
  void initState() {
    super.initState();

    items = new List();
    exps = new List();

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

    expSub?.cancel();
    expSub = dbE.getList().listen((QuerySnapshot snapshot) {
      final List<Expert> player = snapshot.documents
          .map((documentSnapshot) => Expert.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.exps = player;





        if (items[indexPlayer].samuel != "0") {
          questMarketing.add([exps[9].q1j, exps[9].q1, exps[9].domain]);
          questMarketing.add([exps[9].q2j, exps[9].q2, exps[9].domain]);
          questMarketing.add([exps[9].q3j, exps[9].q3, exps[9].domain]);
        }


        if (items[indexPlayer].katrine != "0") {
          questMarketing.add([exps[8].q1j, exps[8].q1, exps[8].domain]);
          questMarketing.add([exps[8].q2j, exps[8].q2, exps[8].domain]);
          questMarketing.add([exps[8].q3j, exps[8].q3, exps[8].domain]);
        }




        if (items[indexPlayer].mariana != "0") {
          questMarketing.add([exps[13].q1j, exps[13].q1, exps[13].domain]);
          questMarketing.add([exps[13].q2j, exps[13].q2, exps[13].domain]);
          questMarketing.add([exps[13].q3j, exps[13].q3, exps[13].domain]);
        }



        dispose();
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
          automaticallyImplyLeading: true,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),

        ),
        body: new      ListView.builder(
          itemCount: questMarketing.length,
          itemBuilder: (BuildContext context, int index) {
            return new Center(
              child: new SingleChildScrollView(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Text("Domaine : " + questMarketing[index][2],textAlign: TextAlign.center,),

                      new Text("Question : " + questMarketing[index][1],   style: new TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,),
                      new Text("Réponse : " + questMarketing[index][0],textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget test(String quest, String answer, String domain) {
    return new Row(
      children: <Widget>[
        new Text(quest),
        new Text(answer),
        new Text(domain),
      ],
    );
  }
}
