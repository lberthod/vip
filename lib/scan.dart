import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './userData.dart';
import './main.dart';
import 'package:vip/service/firestore_service.dart';
import 'package:vip/model/player.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

class Scan extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Scan> {
  FirestoreService<Player> db = new FirestoreService<Player>('joueur');
  StreamSubscription<QuerySnapshot> noteSub;

  String barcode = "";
  List<Player> items;

  @override
  void initState() {
    super.initState();

    items = new List();

    noteSub?.cancel();
    noteSub = db.getList().listen((QuerySnapshot snapshot) {
      final List<Player> player = snapshot.documents
          .map((documentSnapshot) => Player.fromMap(documentSnapshot.data))
          .toList();

      setState(() {
        this.items = player;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Play and Scan'),
          backgroundColor: Colors.cyan,

        ),
        body: new Padding(
            padding: const EdgeInsets.all(20),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Trouvez un QR code dans l'école et scannez le.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Il y a différents QR Code :",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Les QR Code Jaune permettent de défier un expert.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                      "Les QR Code Bleu permettent de controller les dires d'un formateur.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                      "Les QR Code Rouge permettent de rentrer dans l'arène et de défier d'autres joueurs.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Container(
                    child: new MaterialButton(
                        color: Colors.green,

                        onPressed: scan,
                        child: new Text(
                          "Clique ici pour accéder au scan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        )),
                    padding: const EdgeInsets.all(15.0),
                  ),
                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: new Text(
                      "Retour",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();

      ;

      setState(() {
        int temp = 0;
        for (var name in items) {
          if (name.name == username) {
            indexPlayer = temp;
          }
          temp++;
        }

        if (barcode == "Expert1") {
          numExpert = 0;
          if (items[indexPlayer].marc.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert2") {
          numExpert = 1;
          print("EMI " + items[indexPlayer].emilie.toString());
          if (items[indexPlayer].emilie.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert3") {
          numExpert = 2;
          if (items[indexPlayer].fatou.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert4") {
          numExpert = 3;
          if (items[indexPlayer].nicolas.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert5") {
          numExpert = 4;
          if (items[indexPlayer].diana.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert6") {
          numExpert = 5;
          if (items[indexPlayer].leonard.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert7") {
          numExpert = 6;

          if (items[indexPlayer].mathilde.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert8") {
          numExpert = 7;

          if (items[indexPlayer].nivine.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert9") {
          numExpert = 8;

          if (items[indexPlayer].katrine.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert10") {
          numExpert = 9;
          if (items[indexPlayer].samuel.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert11") {
          numExpert = 10;

          if (items[indexPlayer].tatiana.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert12") {
          numExpert = 11;

          if (items[indexPlayer].loic.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert13") {
          numExpert = 12;

          if (items[indexPlayer].anne.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert14") {
          numExpert = 13;

          if (items[indexPlayer].mariana.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert15") {
          numExpert = 14;
          if (items[indexPlayer].kim.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert16") {
          numExpert = 15;
          if (items[indexPlayer].pastora.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert17") {
          numExpert = 16;
          if (items[indexPlayer].florian.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Expert18") {
          numExpert = 17;
          if (items[indexPlayer].manon.toString() == "0") {
            Navigator.of(context).pushNamed('/expert1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur1") {
          numFormateur = 0;
          print(indexPlayer);
          print(items[indexPlayer].muffin.toString() + "----");
          if (items[indexPlayer].muffin.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur2") {
          numFormateur = 1;

          if (items[indexPlayer].tune.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur3") {
          numFormateur = 2;

          if (items[indexPlayer].swag.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur4") {
          numFormateur = 3;

          if (items[indexPlayer].flouze.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur5") {
          numFormateur = 4;

          if (items[indexPlayer].grailler.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else if (barcode == "Formateur6") {
          numFormateur = 5;
          if (items[indexPlayer].beurre.toString() == "0") {
            Navigator.of(context).pushNamed('/formateur1');
          } else {
            Navigator.of(context).pushNamed('/refus');
          }
        } else {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new GoReviz()));
        }
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
