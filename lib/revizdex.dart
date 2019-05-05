import 'package:flutter/material.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'package:vip/model/expert.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import './userData.dart';

class RevizDex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EquipeState();
  }
}

class EquipeState extends State<RevizDex> {
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


        if (items[indexPlayer].marc != "0") {
          questMarketing.add([exps[0].q1j, exps[0].q1, exps[0].domain]);
          questMarketing.add([exps[0].q2j, exps[0].q2, exps[0].domain]);
          questMarketing.add([exps[0].q3j, exps[0].q3, exps[0].domain]);
        }


        if (items[indexPlayer].emilie != "0") {
          questMarketing.add([exps[1].q1j, exps[1].q1, exps[1].domain]);
          questMarketing.add([exps[1].q2j, exps[1].q2, exps[1].domain]);
          questMarketing.add([exps[1].q3j, exps[1].q3, exps[1].domain]);
        }


        if (items[indexPlayer].fatou != "0") {
          questMarketing.add([exps[2].q1j, exps[2].q1, exps[2].domain]);
          questMarketing.add([exps[2].q2j, exps[2].q2, exps[2].domain]);
          questMarketing.add([exps[2].q3j, exps[2].q3, exps[2].domain]);
        }


        if (items[indexPlayer].anne != "0") {
          questMarketing.add([exps[12].q1j, exps[12].q1, exps[12].domain]);
          questMarketing.add([exps[12].q2j, exps[12].q2, exps[12].domain]);
          questMarketing.add([exps[12].q3j, exps[12].q3, exps[12].domain]);
        }


        if (items[indexPlayer].kim != "0") {
          questMarketing.add([exps[14].q1j, exps[14].q1, exps[14].domain]);
          questMarketing.add([exps[14].q2j, exps[14].q2, exps[14].domain]);
          questMarketing.add([exps[14].q3j, exps[14].q3, exps[14].domain]);
        }
        if (items[indexPlayer].tatiana != "0") {
          questMarketing.add([exps[10].q1j, exps[10].q1, exps[10].domain]);
          questMarketing.add([exps[10].q2j, exps[10].q2, exps[10].domain]);
          questMarketing.add([exps[10].q3j, exps[10].q3, exps[10].domain]);
        }


        if (items[indexPlayer].manon != "0") {
          questMarketing.add([exps[17].q1j, exps[17].q1, exps[17].domain]);
          questMarketing.add([exps[17].q2j, exps[17].q2, exps[17].domain]);
          questMarketing.add([exps[17].q3j, exps[17].q3, exps[17].domain]);
        }


        if (items[indexPlayer].leonard != "0") {
          questMarketing.add([exps[5].q1j, exps[5].q1, exps[5].domain]);
          questMarketing.add([exps[5].q2j, exps[5].q2, exps[5].domain]);
          questMarketing.add([exps[5].q3j, exps[5].q3, exps[5].domain]);
        }


        if (items[indexPlayer].samuel != "0") {
          questMarketing.add([exps[9].q1j, exps[9].q1, exps[9].domain]);
          questMarketing.add([exps[9].q2j, exps[9].q2, exps[9].domain]);
          questMarketing.add([exps[9].q3j, exps[9].q3, exps[9].domain]);
        }


        if (items[indexPlayer].florian != "0") {
          questMarketing.add([exps[16].q1j, exps[16].q1, exps[16].domain]);
          questMarketing.add([exps[16].q2j, exps[16].q2, exps[16].domain]);
          questMarketing.add([exps[16].q3j, exps[16].q3, exps[16].domain]);
        }


        if (items[indexPlayer].diana != "0") {
          questMarketing.add([exps[4].q1j, exps[4].q1, exps[4].domain]);
          questMarketing.add([exps[4].q2j, exps[4].q2, exps[4].domain]);
          questMarketing.add([exps[4].q3j, exps[4].q3, exps[4].domain]);
        }


        if (items[indexPlayer].loic != "0") {
          questMarketing.add([exps[11].q1j, exps[11].q1, exps[11].domain]);
          questMarketing.add([exps[11].q2j, exps[11].q2, exps[11].domain]);
          questMarketing.add([exps[11].q3j, exps[11].q3, exps[11].domain]);
        }


        if (items[indexPlayer].nicolas != "0") {
          questMarketing.add([exps[3].q1j, exps[3].q1, exps[3].domain]);
          questMarketing.add([exps[3].q2j, exps[3].q2, exps[3].domain]);
          questMarketing.add([exps[3].q3j, exps[3].q3, exps[3].domain]);
        }


        if (items[indexPlayer].nivine != "0") {
          questMarketing.add([exps[7].q1j, exps[7].q1, exps[7].domain]);
          questMarketing.add([exps[7].q2j, exps[7].q2, exps[7].domain]);
          questMarketing.add([exps[7].q3j, exps[7].q3, exps[7].domain]);
        }


        if (items[indexPlayer].katrine != "0") {
          questMarketing.add([exps[8].q1j, exps[8].q1, exps[8].domain]);
          questMarketing.add([exps[8].q2j, exps[8].q2, exps[8].domain]);
          questMarketing.add([exps[8].q3j, exps[8].q3, exps[8].domain]);
        }


        if (items[indexPlayer].mathilde != "0") {
          questMarketing.add([exps[6].q1j, exps[6].q1, exps[6].domain]);
          questMarketing.add([exps[6].q2j, exps[6].q2, exps[6].domain]);
          questMarketing.add([exps[6].q3j, exps[6].q3, exps[6].domain]);
        }


        if (items[indexPlayer].mariana != "0") {
          questMarketing.add([exps[13].q1j, exps[13].q1, exps[13].domain]);
          questMarketing.add([exps[13].q2j, exps[13].q2, exps[13].domain]);
          questMarketing.add([exps[13].q3j, exps[13].q3, exps[13].domain]);
        }


        if (items[indexPlayer].pastora != "0") {
          questMarketing.add([exps[15].q1j, exps[15].q1, exps[15].domain]);
          questMarketing.add([exps[15].q2j, exps[15].q2, exps[15].domain]);
          questMarketing.add([exps[15].q3j, exps[15].q3, exps[15].domain]);
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
