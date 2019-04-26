import 'dart:async';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './jaune/1/welcome.dart';
import './main.dart';



class Scan extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Scan> {
    String barcode = "";

    @override
    initState() {
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Play and Scan'),
            ),
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(10.0)),

                  new Text("Trouvez un QR code dans l'école et scannez le.",
                      textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,      fontSize: 20.0,),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Il y a différents QR Code :", textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Les QR Code Jaune permettent de défier un expert.", textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Les QR Code Bleu permettent de controller les dires d'un formateur.", textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Les QR Code Rouge permettent de rentrer dans l'arène et de défier d'autres joueurs.", textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),

                  new Container(
                    child: new MaterialButton(
                        onPressed: scan, child:
                    new Text("Clique ici pour accéder au scan"  ,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,      fontSize: 20.0,),
                    )),
                    padding: const EdgeInsets.all(8.0),
                  ),

                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {

                      Navigator.of(context).pushNamed('/');
                    },                child: new Text(
                    "Retour",

                    style: new TextStyle(fontSize: 20.0, color: Colors.white),

                  ),
                  ),              ],
              ),
            )),
      );
    }

    Future scan() async {
      try {
        String barcode = await BarcodeScanner.scan();

        setState(() {

          if (barcode == "Expert1"){
            Navigator.of(context).pushNamed('/expert1');
          }else{
            Navigator.push(
                context, new MaterialPageRoute(builder: (context) => new GoReviz()));
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
      } on FormatException{
        setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
      } catch (e) {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    }
  }
