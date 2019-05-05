import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/expert.dart';
import 'package:vip/userData.dart';
import 'dart:async';

class Expert1 extends StatefulWidget {
  FirestoreService<Expert> db = new FirestoreService<Expert>('expert');

  final Expert player;

  Expert1(this.player);

  @override
  State<StatefulWidget> createState() {
    return new Expert1State();
  }
}

Widget ExpertInfo(
    List<Expert> items, BuildContext context, DocumentSnapshot document) {
  return Center(
    child: new SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("L'expert " + items[numExpert].nom + " apparait",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              )),
          new Text(""),
          new Text(items[numExpert].phrase),
        ],
      ),
    ),
  );
}

Widget testing(
    List<Expert> items, BuildContext context, DocumentSnapshot document) {
  String link = items[numExpert].link;
  return new Padding(
    padding: const EdgeInsets.all(20),
    child: new Container(
      child: new SingleChildScrollView(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                  //   leading: Icon(Icons.album),
                  ),
              ExpertInfo(items, context, document),
              Image(
                image: AssetImage("assets/image/" + link),
                  height: 100.0
,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10.0,
                runSpacing: 20.0,
              ),
              Text(""),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text(
                        'Défier',
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/jaune');
                      },
                    ),
                    FlatButton(
                      child: const Text('Fuir'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/');
                        /* ... */
                      },
                    ),
                  ],
                ),
              ),
              Text(""),
            ],
          ),
        ),
      ),
    ),
  );
}

class Expert1State extends State<Expert1> {
  List<Expert> items;
  FirestoreService<Expert> db = new FirestoreService<Expert>('expert');

  StreamSubscription<QuerySnapshot> noteSub;

  @override
  void initState() {
    super.initState();

    items = new List();

    noteSub?.cancel();
    noteSub = db.getList().listen((QuerySnapshot snapshot) {
      final List<Expert> notes = snapshot.documents
          .map((documentSnapshot) => Expert.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.items = notes;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go'Reviz"),
        backgroundColor: Colors.cyan,

        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('expert').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return testing(items, context, snapshot.data.documents[0]);
          }),
    );
  }
}
