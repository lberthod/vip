  import 'package:flutter/material.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';
  import 'package:vip/userData.dart';

List<DocumentSnapshot> fixedLengthList =  new List();


class Player extends StatefulWidget{
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

class PState extends State<Player> {
  @override

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    TextEditingController addController = TextEditingController();
    TextEditingController removeController = TextEditingController();

    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              document['name'].toString() ,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline,
            ),
          ),


          Container(
            decoration: const BoxDecoration(
              color: Color(0xffddddff),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              document['score'].toString(),
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ),
        ],
      ),
      onTap: () {
        //document.reference.updateData({'stocks': document['stocks'] + 1});
      },
    );
  }

  Future<List<DocumentSnapshot>> getSeedID() async{

    var data = await Firestore.instance.collection('user').where("id", isEqualTo: ide).getDocuments();
    var productList = data.documents;

    List<user> userL = [];

    for ( int i = 0 ; i < productList.length ; i++ ){
      var newU = new user(id:1 ,name : "s" ,score : 3);
      userL.add(newU);}




    for ( int i = 0 ; i < userL.length; i ++){
      print("cet" + userL[i].id.toString());

    }



    final collRef = Firestore.instance.collection('gameLevels');
    DocumentReference docReferance = collRef.document();
    var moviesTitles = ['Inception', 'Heat', 'Spider Man'];







    return productList;
  }

  Widget build(BuildContext context) {

    Firestore.instance.collection('users').document()
        .setData({ 'title': 'title', 'author': 'author' });

    var collectionReference =  Firestore.instance.collection('cities');
    var query = collectionReference.where("id", isEqualTo: ide);


    var document =   Firestore.instance.collection('user').where("id", isEqualTo: ide).getDocuments();



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

            new Padding(padding: EdgeInsets.all(8.0)),

            new Text("Qui-es tu?"),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Je suis : " + username),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                  username = "diana";    },
                child: new Text("Diana",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(
                "-"
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                username = "leo"; },
                child: new Text("Léonard",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(
                "-"
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                username = "fatou"; },
                child: new Text("Fatou-Maty",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(
                "-"
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                username = "pastora"; },
                child: new Text("Pastora",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),
          ],
        ),
      ),


    );
  }


}