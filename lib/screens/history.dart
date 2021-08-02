
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
 
 Future getData() async{
 CollectionReference users = FirebaseFirestore.instance.collection('History');
 print(users.doc('ab').get());
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Irrigation History'),),
    body: Column(
      children: [
        StreamBuilder(
            stream: FirebaseFirestore.instance.collection('History').snapshots(),
            builder: (context, snapshot){
              if(snapshot.hasError)
              return Text("Error!!",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
              if(!snapshot.hasData)
              return Text("No Data Found",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
              
              return Column(
                children: <Widget>[
                  Text(snapshot.data.documents[0]['Date'].toString()),
                  Text(snapshot.data.documents[0]['Duration'].toString()),
                ],
              );
            },
          ),
      ],
    ),
    );
  }
}