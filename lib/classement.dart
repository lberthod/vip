import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/userData.dart';

List<DocumentSnapshot> fixedLengthList =  new List();


class Classement extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new ClassementState();
  }
}
class user{
int id;
String name;
int score;

user({this.id, this.name, this.score});
}

class ClassementState extends State<Classement> {
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

    var data = await Firestore.instance.collection('joueur').where("id", isEqualTo: ide).getDocuments();
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

  Widget total(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Classemenst"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('joueur')
              .snapshots()	,
          builder: (context, snapshot) {


            getSeedID();


            if (!snapshot.hasData) return const Text('Loading...');
            return ListView.builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _buildListItem(context, snapshot.data.documents[index]),
            );
          }),


    );
  }

  Widget build(BuildContext context) {

    Firestore.instance.collection('users').document()
        .setData({ 'title': 'title', 'author': 'author' });

    var collectionReference =  Firestore.instance.collection('cities');
    var query = collectionReference.where("id", isEqualTo: ide);


    var document =   Firestore.instance.collection('user').where("id", isEqualTo: ide).getDocuments();



      return Scaffold(
      appBar: AppBar(
        title: Text("Classemenst"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('joueur')
              .snapshots()	,
          builder: (context, snapshot) {


            getSeedID();


            if (!snapshot.hasData) return const Text('Loading...');
            return ListView.builder(
              itemExtent: 80.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _buildListItem(context, snapshot.data.documents[index]),
            );
          }),
    );
    }


}