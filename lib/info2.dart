import 'package:flutter/material.dart';



class Info extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new InfoState();
  }
}

class InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: new SingleChildScrollView(


            scrollDirection: Axis.vertical,
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


                new Text("Cette application vous permet, après des séances d'hypnose avec un thérapeute, de prolonger les effets de ces séances. "
                    "Elle vous accompagne dans l'apprentissage de l'auto hypnose",
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("L'hypnose est un état de conscience qui n'est ni du sommeil ni de la veille habituelle. On l'apelle parfois veille paradoxale"
                  "Elle permet d'harmoniser le corps et l'esprit, le conscient et l'inconscient. Grace à l'hypnose, vous portez une attention particulière à vos perceptions.",
                  style: new TextStyle(
                    fontSize: 16,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("Veillez à prévoir un temps suffisant ( 10 à 30 minutes) après la séance pour revenir complètement dans le concert surtout si vous devez prendre la voiture ou faire une activité néessitant une concentration importante."
                  ,
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),




                new Container(
                  alignment: Alignment.bottomCenter,
                  child:  new MaterialButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.red,
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