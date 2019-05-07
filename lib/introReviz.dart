  import 'package:flutter/material.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';
  import 'package:vip/userData.dart';
  import 'package:vip/userData.dart';

List<DocumentSnapshot> fixedLengthList =  new List();


class introR extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PState();
  }
}
class user{
  int id;
  String name;
  int score;

  user({this.id, this.name, this.score});
}

class PState extends State<introR> {
  @override


  Widget build(BuildContext context) {




    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Reviz'Go"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,

      ),


      body:

      Padding(
        padding: const EdgeInsets.all(20),
      child:

      new SingleChildScrollView(


        scrollDirection: Axis.vertical,
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Padding(padding: EdgeInsets.all(8.0)),

            new Text("Bienvenue dans le Reviz'Dex !" , style: new TextStyle(
                fontSize: 18,
                color: Colors.black
            ),),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Choisis le domaine à réviser"),

            new Padding(padding: EdgeInsets.all(20.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:() {
                  Navigator.of(context).pushNamed('/revizdexMarketing');
                },
                child: new Text("Marketing",
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
                onPressed:(){Navigator.of(context).pushNamed('/revizdexAchat');
               },
                child: new Text("Achats",
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
                onPressed:(){Navigator.of(context).pushNamed('/revizdexAdmin');
              },
                child: new Text("Administration",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/revizdexCompta');
                },
                child: new Text("Comptabilité",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).pushNamed('/revizdexVente');
                },
                child: new Text("Vente",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).pushNamed('/revizdexRH');
                },
                child: new Text("Ressources humaines",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.redAccent,
                onPressed:(){Navigator.of(context).pushNamed('/');
               },
                child: new Text("Retour",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

          ],
        ),
      ),

    )
    );
  }


}
