
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Irrigation History'),),
    body: SingleChildScrollView(
      child: Column(
          children: [
            StreamBuilder(
                stream: FirebaseFirestore.instance.collection("Wheat").snapshots(),
                builder: (context, snapshot){
                  if(snapshot.hasError)
                  return Text("Error!!",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
                  if(!snapshot.hasData)
                  return Text("Loading Data...",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
                  
              return Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  Text("Wheat",textAlign: TextAlign.center,style: TextStyle(color: Colors.green[500], fontSize: 30.0,fontWeight: FontWeight.w800,),),
                  Padding(padding: EdgeInsets.only(bottom: 20.0),),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,      
                      children: [
                        Text("Date",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,),),
                        Text("Duration",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,),)
                      ],
                    ),
                  ),
                  for(int i=0; i < snapshot.data.docs.length; i++)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(snapshot.data.docs[i]['Date'].toString(),textAlign: TextAlign.center,),
                            Text(snapshot.data.docs[i]['Duration'].toString(),textAlign: TextAlign.center,),
                            
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ); 
                },
                ),
             
             StreamBuilder(
                stream: FirebaseFirestore.instance.collection('Maze').snapshots(),
                builder: (context, snapshot){
                  if(snapshot.hasError)
                  return Text("Error!!",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
                  if(!snapshot.hasData)
                  return Text("Loading Data...",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),);
                  
              return Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20.0),),
                  Text("Maize",textAlign: TextAlign.center,style: TextStyle(color: Colors.green[500], fontSize: 30.0,fontWeight: FontWeight.w800,),),
                  Padding(padding: EdgeInsets.only(bottom: 20.0),),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,      
                      children: [
                        Text("Date",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,),),
                        Text("Duration",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,),)
                      ],
                    ),
                  ),
                  for(int i=0; i < snapshot.data.docs.length; i++)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(snapshot.data.docs[i]['Date'].toString(),textAlign: TextAlign.center,),
                            Text(snapshot.data.docs[i]['Duration'].toString(),textAlign: TextAlign.center,),
                            
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ); 
                },
                ),
            
             
                ], 
            ),
    ),
      );
    
    

  }
}