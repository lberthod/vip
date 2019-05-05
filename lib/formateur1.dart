import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/formateur.dart';
import 'package:vip/userData.dart';
import 'dart:async';

class Formateur1 extends StatefulWidget {
  FirestoreService<Formateur> db = new FirestoreService<Formateur>('expert');

  final Formateur player;

  Formateur1(this.player);

  @override
  State<StatefulWidget> createState() {
    return new Formateur1State();
  }
}

Widget ExpertInfo(
    List<Formateur> items, BuildContext context, DocumentSnapshot document) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: new Center(
      child: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              items[numFormateur].nom + " va t'interroger!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            new Text(""),
            new Text(items[numFormateur].phrase),
          ],
        ),
      ),
    ),
  );
}

Widget testing(
    List<Formateur> items, BuildContext context, DocumentSnapshot document) {
  String link = items[numFormateur].link;
  return Center(
    child: new SingleChildScrollView(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ExpertInfo(items, context, document),
            Image(
              image: AssetImage("assets/image/" + link),
              height: 100.0,
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
                      Navigator.of(context).pushNamed('/bleu');
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
  );
}

class Formateur1State extends State<Formateur1> {
  List<Formateur> items;
  FirestoreService<Formateur> db = new FirestoreService<Formateur>('formateur');

  StreamSubscription<QuerySnapshot> noteSub;

  @override
  void initState() {
    super.initState();

    items = new List();

    noteSub?.cancel();
    noteSub = db.getList().listen((QuerySnapshot snapshot) {
      final List<Formateur> notes = snapshot.documents
          .map((documentSnapshot) => Formateur.fromMap(documentSnapshot.data))
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
          stream: Firestore.instance.collection('formateur').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return testing(items, context, snapshot.data.documents[0]);
          }),
    );
  }
}
