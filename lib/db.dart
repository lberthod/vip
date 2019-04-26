import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';


final notesReference = FirebaseDatabase.instance.reference().child('nom');

final databaseReference = FirebaseDatabase.instance.reference();


class DB extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new DbState();
  }
}

void createRecord(){
  notesReference.child("1").set({
    'title': 'Mastering EJB',
    'description': 'Programming Guide for J2EE'
  });
  notesReference.child("2").set({
    'title': 'Flutter in Action',
    'description': 'Complete Programming Guide to learn Flutter'
  });
}

void add(){
  notesReference.push().set({
    'title': 'grokonez.com',
  }).then((_) {
    // ...
  });
}

class DbState extends State<DB> {
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

                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("INFOS",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(.0)),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("Qu'est-ce l'auto-hypnose?",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),



                new RaisedButton(
                  child: Text('Create Record'),
                  onPressed: () {
                    add();
                  },
                ),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child:  new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: add,
                        child: new Text("Retour",
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white
                          ),)
                    )
                ),




              ],
            ),
          ),

        )
    );
  }


}

class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Final Score: $score",
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                onPressed: (){

                  Navigator.pop(context);
                },
                child: new Text("Reset Quiz",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)

            ],
          ),
        ),


      ),
    );
  }


}