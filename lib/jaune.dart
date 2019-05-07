import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/userData.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'package:vip/model/expert.dart';

import 'dart:async';

var points = 0;
var questionNumber = 0;
var q1 = 0;
var q2 = 0;
var q3 = 0;
var correct = false;
var quiz = new Quizz();

class Quizz {
  String scorePlayer = "";
  String niveauPlayer = "";

  String q1 = ";";
  String q2 = ";";
  String q3 = ";";
  String q1a = ";";
  String q1b = ";";
  String q1c = ";";
  String q1d = ";";
  int q1r = 0;
  String q2a = ";";
  String q2b = ";";
  String q2c = ";";
  String q2d = ";";
  int q2r = 0;
  String q3a = ";";
  String q3b = ";";
  String q3c = ";";
  String q3d = ";";
  int q3r = 0;

  var questions = [
    //  "Un animal s’approche de vous...",

    "Pour l’approche marketing de ton entreprise, pourquoi est-il important de poser des questions ouvertes lors de ton premier entretien ?",
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
      "Diagramme en courbes",
      "Camembert",
      "Radar",
    ],

    //answer 3
    [
      "Exploiter au moins deux segments du marché et à concevoir des produits et plans d'action distincts pour chaque segment",
      "Minimiser les différences entre les segments du marché",
      "S'adresse à un seul couple produit-marché",
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
        context, new MaterialPageRoute(builder: (context) => new Summary()));
  } else {
    questionNumber++;

    if (correct) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new ReponseC()));
    } else {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new ReponseF()));
    }
  }
}

Widget testing(List items, BuildContext context, DocumentSnapshot document) {
  quiz.scorePlayer = document['score'];
  quiz.scorePlayer = document['score'];
  quiz.niveauPlayer = document['niveau'];

  quiz.questions[0] = items[numExpert].q1;
  quiz.questions[1] = items[numExpert].q2;
  quiz.questions[2] = items[numExpert].q3;

  quiz.correct[0][0] = (items[numExpert].q1r);
  quiz.correct[1][0] = (items[numExpert].q2r);
  quiz.correct[2][0] = (items[numExpert].q3r);

  quiz.choices[0][0] = items[numExpert].q1a;
  quiz.choices[0][1] = items[numExpert].q1b;
  quiz.choices[0][2] = items[numExpert].q1c;
  quiz.choices[0][3] = items[numExpert].q1d;

  quiz.choices[1][0] = items[numExpert].q2a;
  quiz.choices[1][1] = items[numExpert].q2b;
  quiz.choices[1][2] = items[numExpert].q2c;
  quiz.choices[1][3] = items[numExpert].q2d;

  quiz.choices[2][0] = items[numExpert].q3a;
  quiz.choices[2][1] = items[numExpert].q3b;
  quiz.choices[2][2] = items[numExpert].q3c;
  quiz.choices[2][3] = items[numExpert].q3d;

  void upp() {
    int x = int.parse(document['score']);
    x = x + 1;

    // document.reference.updateData({'score': x.toString() });
  }

  return new WillPopScope(
    onWillPop: () async => false,
    child: Scaffold(
        body: new Padding(
      padding: const EdgeInsets.all(20),
      child: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(15.0)),
            new Container(
              alignment: Alignment.center,

              //             <--- BoxDecoration here

              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Question ${questionNumber + 1} sur ${quiz.questions.length}",
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
                    } else {
                      correct = false;
                    }
                    updateQuestion(context, document);
                  },
                  child: new Text(
                    "Choisir la réponse 1",
                    style: new TextStyle(fontSize: 12.0, color: Colors.white),
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
                    } else {
                      correct = false;
                    }

                    updateQuestion(context, document);
                  },
                  child: new Text(
                    "Choisir la réponse 2",
                    style: new TextStyle(fontSize: 12.0, color: Colors.white),
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
                    } else {
                      correct = false;
                    }

                    updateQuestion(context, document);
                  },
                  child: new Text(
                    "Choisir la réponse 3",
                    style: new TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                ),

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
                    } else {
                      correct = false;
                    }

                    updateQuestion(context, document);
                  },
                  child: new Text(
                    "Choisir la réponse 4",
                    style: new TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.10)),
              ],
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
          ],
        ),
      ),
    )),
  );
}

class Quiz1State extends State<Quiz> {
  int index = 0;

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
        title: Text("Reviz'Go"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder(
          stream: Firestore.instance
              .collection('joueur')
              .where("name", isEqualTo: username)
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            if (username == "pastora") {
              index = 2;
            }
            return testing(items, context, snapshot.data.documents[0]);
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
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new Summary()));
      } else {
        questionNumber++;

        if (correct) {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ReponseC()));
        } else {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ReponseF()));
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
    String text;
    String manonT;
    String manonV;
    void resetQuiz() {
      points = 0;
      questionNumber = 0;
    }



    if (correct) {
      text = "Tu as répondu correctement à la dernière question.";
    } else {
      text = "Tu as donné une mauvaise réponse à la dernière question. La bonne réponse était : " + quiz.choices[questionNumber - 1]
      [int.parse(quiz.correct[questionNumber - 1][0]) - 1];
    }
    FirestoreService<Player> db = new FirestoreService<Player>('joueur');
    FirestoreService<Player> db1 = new FirestoreService<Player>('joueur');

    if (points >= 2) {
      manonT = "Bravo, tu as recruté un nouvel expert =) ";
      manonV = "3";
    } else {
      manonT =
          " Dommage, tu n'as pas suffisament répondu correctement! L'expert s'en va.";
      manonV = "2";
    }

    int scoreF = int.parse(quiz.scorePlayer);
    scoreF = scoreF + points;
    String finalScore = scoreF.toString();

    print(finalScore + "---");
    int niveauF = int.parse(quiz.niveauPlayer);
    niveauF = niveauF + points;
    String niveauFinal = niveauF.toString();
    print(niveauFinal + " ---");
    if (numExpert == 0) {
      // MARC
      if (points == 3) {
        db.updateMarc(Player.onlyMarc("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateMarc(Player.onlyMarc("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateMarc(Player.onlyMarc("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 1) {
      // MARC
      if (points == 3) {
        db.updateEmilie(Player.onlyEmilie("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateEmilie(Player.onlyEmilie("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateEmilie(Player.onlyEmilie("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 2) {
      // MARC
      if (points == 3) {
        db.updateFatou(Player.onlyFatou("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateFatou(Player.onlyFatou("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateFatou(Player.onlyFatou("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 3) {
      // Nico
      if (points == 3) {
        db.updateNicolas(Player.onlyNicolas("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateNicolas(Player.onlyNicolas("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateNicolas(
            Player.onlyNicolas("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 4) {
      // Diana
      if (points == 3) {
        db.updateDiana(Player.onlyDiana("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateDiana(Player.onlyDiana("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateDiana(Player.onlyDiana("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 5) {
      // Leo
      if (points == 3) {
        db.updateLeonard(Player.onlyLeonard("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateLeonard(Player.onlyLeonard("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateLeonard(
            Player.onlyLeonard("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 6) {
      // Mathilde
      if (points == 3) {
        db.updateMathilde(Player.onlyMathilde("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateMathilde(Player.onlyMathilde("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateMathilde(
            Player.onlyMathilde("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 7) {
      if (points == 3) {
        db.updateNivine(Player.onlyNivine("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateNivine(Player.onlyNivine("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateNivine(Player.onlyNivine("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 8) {
      if (points == 3) {
        db.updateKatrine(Player.onlyKatrine("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateKatrine(Player.onlyKatrine("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateKatrine(
            Player.onlyKatrine("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 9) {
      // Sam
      if (points == 3) {
        db.updateSamuel(Player.onlySamuel("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateSamuel(Player.onlySamuel("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateSamuel(Player.onlySamuel("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 10) {
      // Tatiana
      if (points == 3) {
        db.updateTatiana(Player.onlyTatiana("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateTatiana(Player.onlyTatiana("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateTatiana(
            Player.onlyTatiana("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 11) {
      // Loic

      if (points == 3) {
        db.updateLoic(Player.onlyLoic("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateLoic(Player.onlyLoic("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateLoic(Player.onlyLoic("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 12) {
      // Anne
      if (points == 3) {
        db.updateAnne(Player.onlyAnne("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateAnne(Player.onlyAnne("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateAnne(Player.onlyAnne("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 13) {
      // Mariana
      if (points == 3) {
        db.updateMariana(Player.onlyMariana("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateMariana(Player.onlyMariana("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateMariana(
            Player.onlyMariana("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 14) {
      // Kim
      if (points == 3) {
        db.updateKim(Player.onlyKim("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateKim(Player.onlyKim("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateKim(Player.onlyKim("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 15) {
      // Pastora
      if (points == 3) {
        db.updatePastora(Player.onlyPastora("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updatePastora(Player.onlyPastora("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updatePastora(
            Player.onlyPastora("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 16) {
      // Florian
      if (points == 3) {
        db.updateFlorian(Player.onlyFlorian("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateFlorian(Player.onlyFlorian("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateFlorian(
            Player.onlyFlorian("1", finalScore, quiz.niveauPlayer));
      }
    }

    if (numExpert == 17) {
      // Manon
      if (points == 3) {
        db.updateManon(Player.onlyManon("3", finalScore, niveauFinal));
      } else if (points == 2) {
        db.updateManon(Player.onlyManon("2", finalScore, niveauFinal));
      } else if (points <= 1) {
        db.updateManon(Player.onlyManon("1", finalScore, quiz.niveauPlayer));
      }
    }

    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: new Padding(
          padding: const EdgeInsets.all(20),
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  text,
                  style: new TextStyle(fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
                new Padding(padding: EdgeInsets.all(30.0)),
                new Text(
                  manonT,
                  style: new TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
                new Padding(padding: EdgeInsets.all(30.0)),
                new MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    questionNumber = 0;
                    points = 0;

                    Navigator.of(context).pushNamed('/classement');
                  },
                  child: new Text(
                    "Va voir le classement",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                new MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    questionNumber = 0;
                    points = 0;
                    Navigator.of(context).pushNamed('/');
                  },
                  child: new Text(
                    "Retour à la page d'accueil",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ],
            ),
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
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          title: new Text("Go'Reviz"),
          backgroundColor: Colors.cyan,
          automaticallyImplyLeading: false,
        ),
        body: new Padding(
          padding: const EdgeInsets.all(20),
          child: new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(30.0)),

                  new Text(
                    "Tu as répondu correctement !",
                    style: new TextStyle(fontSize: 35.0),
                    textAlign: TextAlign.center,
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
                  ), //ResetQuizz
                ],
              ),
            ),
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
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          title: new Text("Go'Reviz"),
          backgroundColor: Colors.cyan,
          automaticallyImplyLeading: false,
        ),
        body: new Padding(
          padding: const EdgeInsets.all(20),
          child: new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Text(

                    "Tu as donné une mauvaise réponse !",
                    style: new TextStyle(fontSize: 35.0),
                    textAlign: TextAlign.center,

                  ),
                  new Padding(padding: EdgeInsets.all(30.0)),

                  new Text("La bonne réponse était : " ,style: new TextStyle(fontSize: 22.0), textAlign: TextAlign.center,),
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Text(
                    quiz.choices[questionNumber - 1]
                    [int.parse(quiz.correct[questionNumber - 1][0]) - 1],
                    style: new TextStyle(fontSize: 27.0), textAlign: TextAlign.center,
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
                  ), //ResetQuizz
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
