import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Expert1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Expert1State();
  }
}

tapp(DocumentSnapshot document, BuildContext context, String text) {
  document.reference.updateData({'stocks': document['stocks'] + 1});
}

Widget ExpertInfo(BuildContext context, DocumentSnapshot document){
  return  Center(
    child: new SingleChildScrollView(


      scrollDirection: Axis.vertical,
      child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

        new Text(
            document['name'] + " / Puissance : " + document['puissance'].toString()        ),
        new Text(
            ""    ),
        new Text(
            document['phrase']       ),


],
    ),
  ),
  );
}


Widget testing(BuildContext context, DocumentSnapshot document){

  return Center(
      child: new SingleChildScrollView(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            //   leading: Icon(Icons.album),
            title: Text("Recrute un expert..."),
          ),
          ExpertInfo(context,document),
          Image(image: AssetImage('assets/image/manon.png'),),
          Wrap(alignment: WrapAlignment.center,
            spacing: 10.0,
            runSpacing: 20.0,),
          Text(""),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Défier',),
                  onPressed:(){
                    document.reference.updateData({'numero': 1});


                    Navigator.of(context).pushNamed('/jaune');    },
                ),
                FlatButton(
                  child: const Text('Fuir'),

                  onPressed: () {
  Navigator.of(context).pushNamed('/');
                    /* ... */ },
                ),
              ],
            ),
          ),
          Text(""),
        ],
      ),
    ),
    ),
  );
}


Widget _buildListItem1(BuildContext context, DocumentSnapshot document) {
  TextEditingController addController = TextEditingController();
  TextEditingController removeController = TextEditingController();


}




class Expert1State extends State<Expert1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expert"),
      ),
      body:
      StreamBuilder(
          stream: Firestore.instance.collection('expert').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return
              testing(context, snapshot.data.documents[0]);

          }),
    );
  }



}

