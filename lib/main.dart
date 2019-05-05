import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './equipe.dart';
import './refus.dart';
import './expert1.dart';
import './scan.dart';
import './classement.dart';
import './classementScore.dart';
import './classementNiveau.dart';
import './aide.dart';
import './reviz.dart';
import './db.dart';
import './jaune.dart';
import './intro.dart';
import './model/player.dart';
import './expertfin.dart';
import './player.dart';
import './bleu.dart';
import './formateur1.dart';
import './model/expert.dart';
import './model/formateur.dart';
import './revizdex.dart';
import './revizdexMarketing.dart';
import './revizdexRH.dart';
import './revizdexAchat.dart';
import './revizdexCompta.dart';
import './revizdexVente.dart';
import './revizdexAdmin.dart';
import './introReviz.dart';

void main() {
  Player p = new Player();
  Expert e = new Expert();
  Formateur f = new Formateur();

  runApp(new MaterialApp(
    home: new GoReviz(),
    debugShowCheckedModeBanner : false,

    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/main': (context) => GoReviz(),
      '/equipe': (BuildContext context) => new Equipe(),
      '/scans': (BuildContext context) => new Scan(),
      '/classement': (BuildContext context) => new Classement(),
      '/classementS': (BuildContext context) => new ClassementScore(),
      '/classementN': (BuildContext context) => new ClassementNiveau(),
      '/aide': (BuildContext context) => new Aide(),
      '/reviz': (BuildContext context) => new Reviz(p),
      '/db': (BuildContext context) => new DB(),
      '/info': (BuildContext context) => new Quiz(),
      '/expert1': (BuildContext context) => new Expert1(e),
      '/jaune': (BuildContext context) => new Quiz(),
      '/intro': (BuildContext context) => new Intro(),
      '/expertfin': (BuildContext context) => new ExpertFin(p),
      '/player': (BuildContext context) => new PlayerC(),
      '/bleu': (BuildContext context) => new Bleu(),
      '/formateur1': (BuildContext context) => new Formateur1(f),
      '/refus': (BuildContext context) => new Refus(),
      '/revizdex': (BuildContext context) => new RevizDex(),
      '/revizdexMarketing': (BuildContext context) => new RevizDexMa(),
      '/revizdexAchat': (BuildContext context) => new RevizDexA(),
      '/revizdexVente': (BuildContext context) => new RevizDexV(),
      '/revizdexAdmin': (BuildContext context) => new RevizDexAd(),
      '/revizdexCompta': (BuildContext context) => new RevizDexC(),
      '/revizdexRH': (BuildContext context) => new RevizDexRH(),
      '/introReviz': (BuildContext context) => new introR(),
    },
  ));
}

class GoReviz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GoRevizState();
  }
}

class GoRevizState extends State<GoReviz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Go'Reviz"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,

      ),
      body: new Padding(
        padding: const EdgeInsets.all(20),

        child: new SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(),
              Image(
                image: AssetImage("assets/image/VIP_Logo_1.jpg"),
              ),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text("      Jouer pour réviser"),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/player');
                  },
                  child: new Text(
                    "Avant de commencer!",
                    style: new TextStyle(fontSize: 18, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.deepOrange,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/scans');
                  },
                  child: new Text(
                    "Scan and Play",
                    style: new TextStyle(fontSize: 18, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/equipe');
                  },
                  child: new Text(
                    "Equipe",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/introReviz');
                  },
                  child: new Text(
                    "Reviz'dex",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/classement');
                  },
                  child: new Text(
                    "Classement",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.lightGreen,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/aide');
                  },
                  child: new Text(
                    "Aide",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text(
                  "Application réalisée dans le cours VIP du master Maltt par Kim, Marianna, Emilie et Loïc"),
            ],
          ),
        ),
      ),
    );
  }

//void startAudios(){
// setState(() {
//    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Audios()));
// });
//}

}
