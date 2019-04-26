import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './equipe.dart';
import './expert1.dart';
import './scan.dart';
import './classement.dart';
import './aide.dart';
import './reviz.dart';
import './db.dart';
import './jaune.dart';
import './player.dart';
import './intro.dart';



void main(){
  runApp(
      new MaterialApp(
        home: new GoReviz(),
        initialRoute: '/',

        routes: <String, WidgetBuilder> {
          '/main': ( context) => GoReviz(),
          '/equipe': (BuildContext context) => new Equipe(),
          '/scans': (BuildContext context) => new Scan(),
          '/classement': (BuildContext context) => new Classement(),
          '/aide': (BuildContext context) => new Aide(),
          '/reviz': (BuildContext context) => new Reviz(),
          '/db': (BuildContext context) => new DB(),
          '/info': (BuildContext context) => new Quiz(),
          '/expert1': (BuildContext context) => new Expert1(),
          '/jaune': (BuildContext context) => new Quiz(),
          '/player': (BuildContext context) => new Player(),
          '/intro': (BuildContext context) => new Intro()

        },
      )
  );
}

class GoReviz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new GoRevizState();
  }
}

class GoRevizState extends State<GoReviz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Go'Reviz"),
        backgroundColor: Colors.blue,
      ),


      body: new SingleChildScrollView(


        scrollDirection: Axis.vertical,
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text("Bienvenu sur Go'Reviz,"),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Découvrez votre profil."),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/player');    },
                child: new Text("Avant de commencer!",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),

            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/scans');    },
                child: new Text("Play and Scan",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/equipe');    },
                child: new Text("Equipe",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/reviz');    },
                child: new Text("Reviz'dex",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/classement');
                },
                child: new Text("Classement",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/aide');
                },
                child: new Text("Aide",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Application réalisée dans le cours VIP du master Maltt par Kim, Marianna, Emilie et Loïc"),

          ],
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

