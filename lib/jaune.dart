import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/userData.dart';

var points = 0;

var questionNumber = 0;
var q1 = 0;
var q2 = 0;
var q3 = 0;
var correct = false;

var quiz = new Quizz();

class Quizz {
  var questions = [
    //  "Un animal s’approche de vous...",

    "Pour l’approche marketing de ton entreprise, pourquoi est il important de poser des questions ouvertes lors de ton premier entretien ?",
  "Cite un type de graphique que tu pourrais utiliser pour représenter les 'départs' en 2008 et en 2009 ?",
    "Une stratégie de marketing différenciée consiste à :",

  ];

  var correct = [
    //answer 1
    [
      "4",
    ],
    [
      "2",
    ],
    [

      "1",
    ],
  ];

  var choices = [
    //answer 1
    [
      "De maximiser les profits",
      "De satisfaire les distributeurs",
      "D'obtenir un fort taux de rachat",
      "Aucune de ces réponses n'est correcte",

    ],

    //answer 2
    [
      "Diagramme en barre ou Histogramme",
      "Diagramme en courbSes",
      "Camembert",
      "Radar",
    ],

    //answer 3
    [
      "Exploiter au moins deux segments du marché et à concevoir des produits et plans d'action distincts pour chaque segments",
      "Minimiser les différences entre les segments du marché",
      "S'adresse à une seul couple produit-marché",
      "Attaquer avec le même marketing-mix des segments différents",
    ],

  ];
}

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}


void updateQuestion(BuildContext context, DocumentSnapshot document) {
    if (questionNumber == quiz.questions.length - 1) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) =>
              new Summary(
              )));
    }
    else{
      questionNumber++;

      if(correct){
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) =>
                new ReponseC(
                )));
      }
      else{
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) =>
                new ReponseF(
                )));
      }

    }

}

Widget testing(BuildContext context, DocumentSnapshot document){
  void upp () {
    document.reference.updateData({'score': document['score'] + 1});
  }

  return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SingleChildScrollView(

            scrollDirection: Axis.vertical,

          child:

          new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(15.0)),
              new Container(
                alignment: Alignment.center,

                //             <--- BoxDecoration here

                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "Question ${questionNumber + 1} sur ${quiz.questions
                          .length}",
                      style: new TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(10.10)),

              new Padding(padding: EdgeInsets.all(10.0)),
              new Text(
                "Questions : " + quiz.questions[questionNumber],
                style: new TextStyle(
                    fontSize: 16.0,
                    decorationColor: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Text(
                "1) " + quiz.choices[questionNumber][0],
                style: new TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              new Padding(padding: EdgeInsets.all(10.10)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //button 1
                  new MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (quiz.correct[questionNumber][0] == "1") {
                        points++;
                        correct = true;
                        upp();

                      }else{
                        correct = false;

                      }
                      updateQuestion(context, document);
                    },
                    child: new Text(
                      "Choisir la réponse 1",
                      style:
                      new TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.10)),
                ],
              ),
              new Padding(padding: EdgeInsets.all(10.10)),
              new Text(
                "2) " + quiz.choices[questionNumber][1],
                style: new TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              new Padding(padding: EdgeInsets.all(10.10)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //button 1
                  new MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (quiz.correct[questionNumber][0] == "2") {
                        upp();
                        points++;
                        correct = true;

                      }else{
                        correct = false;

                      }

                      updateQuestion(context, document);
                    },
                    child: new Text(
                      "Choisir la réponse 2",
                      style:
                      new TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.10)),
                ],
              ),
              new Padding(padding: EdgeInsets.all(10.10)),


              new Text(
                "3) " + quiz.choices[questionNumber][2],
                style: new TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              new Padding(padding: EdgeInsets.all(10.10)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //button 1
                  new MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (quiz.correct[questionNumber][0] == "3") {
                        upp();

                        points++;
                        correct = true;

                      }else{
                        correct = false;

                      }

                      updateQuestion(context, document);
                    },
                    child: new Text(
                      "Choisir la réponse 3",
                      style:
                      new TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),

                  new Text(
                      document['score'].toString()       ),

                  new Padding(padding: EdgeInsets.all(10.10)),


                ],
              ),
              new Padding(padding: EdgeInsets.all(10.0)),

              new Text(
                "4) " + quiz.choices[questionNumber][3],
                style: new TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              new Padding(padding: EdgeInsets.all(10.10)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //button 1
                  new MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      if (quiz.correct[questionNumber][0] == "4") {
                        upp();
                        points++;
                        correct = true;

                      }else{
                        correct = false;

                      }

                      updateQuestion(context, document);
                    },
                    child: new Text(
                      "Choisir la réponse 3",
                      style:
                      new TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(10.10)),


                ],
              ),
              new Padding(padding: EdgeInsets.all(10.0)),


            ],
          ),

        ),

      ));


}

class Quiz1State extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expert"),
      ),
      body:
      StreamBuilder(
          stream: Firestore.instance.collection('joueur').where("name", isEqualTo: username).snapshots(),
          builder: (context, snapshot) {


            if (!snapshot.hasData) return const Text('Loading...');
            return
              testing(context, snapshot.data.documents[0]);

          }),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }




  void resetQuiz() {
    points = 0;
    questionNumber = 0;

    setState(() {
      Navigator.of(context).pushNamed('/');
    });
  }

  void updateQuestion(BuildContext context, DocumentSnapshot document) {


  setState(() {



    if (questionNumber == quiz.questions.length - 1) {

          Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) =>
                new Summary(
                )));
      }
      else{
        questionNumber++;

        if(correct){
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) =>
                  new ReponseC(
                  )));
        }
        else{
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) =>
                  new ReponseF(
                  )));
        }

      }

    });
  }

}

class Summary extends StatelessWidget {
  final int score;

  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void resetQuiz() {
      points = 0;
      questionNumber = 0;

    }
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              new Text(


                "Vous avez répondu correctment à la dernière question",
                style: new TextStyle(fontSize: 35.0),
              ),

              new Text(
                "Manon intègre ton équipe.",
                style: new TextStyle(fontSize: 35.0),
              ),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  points  = 0;

                  Navigator.of(context).pushNamed('/classement');
                },                child: new Text(
                "Va checker le classement",

                style: new TextStyle(fontSize: 20.0, color: Colors.white),

              ),

              ),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
points  = 0;
                  Navigator.of(context).pushNamed('/');
                },                child: new Text(
                "Retour à la page d'accueil",

                style: new TextStyle(fontSize: 20.0, color: Colors.white),

              ),

              ),

            ],
          ),
        ),
      ),
    );
  }


}


class ReponseC extends StatelessWidget {
  final int score;

  ReponseC({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void resetQuiz() {
      points = 0;
      questionNumber = 0;

    }
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Vous avez répondu correctement !",
                style: new TextStyle(fontSize: 35.0),
              ),


              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {

                  Navigator.pop(context);
                },
                child: new Text(
                  "Prochaine question",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),

                ),


              ),  //ResetQuizz

            ],
          ),
        ),
      ),
    );
  }


}


class ReponseF extends StatelessWidget {
  final int score;

  ReponseF({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void resetQuiz() {
      points = 0;
      questionNumber = 0;

    }
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Vous avez répondu faux !",
                style: new TextStyle(fontSize: 35.0),
              ),


              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {

                  Navigator.pop(context);
                },
                child: new Text(
                  "Prochaine question",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),

                ),


              ),  //ResetQuizz

            ],
          ),
        ),
      ),
    );
  }


}
