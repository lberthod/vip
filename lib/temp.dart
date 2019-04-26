import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class temp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Classement2State();
  }
}


class Classement2State extends State<temp> {
  @override

  Widget build(BuildContext context) {
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
              Image(image: AssetImage('assets/image/manon.png'),),
              Wrap(alignment: WrapAlignment.center,
                spacing: 10.0,
                runSpacing: 20.0,)
            ],
          ),
        ),
      ),
    );
  }

}
class ClassementState extends State<temp> {
  @override

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    TextEditingController addController = TextEditingController();
    TextEditingController removeController = TextEditingController();

    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              //document['name'].document['name'] + ':'
              "ok",
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


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Classemenst"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('user')
              .snapshots()	,
          builder: (context, snapshot) {

            debugPrint("ok");

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