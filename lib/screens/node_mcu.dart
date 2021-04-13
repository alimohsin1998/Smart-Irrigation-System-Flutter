import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';



class node_mcu extends StatefulWidget {

  
  String val="0";
  @override
  _node_mcuState createState() => _node_mcuState();
}

class _node_mcuState extends State<node_mcu> {
  
final fb = FirebaseDatabase.instance.reference();
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter & Node MCU"),),
      body: Column(
        children: [
         
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text("This is a Testing Application!",textAlign: TextAlign.center,style:TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700, color:Colors.red,),),
          ),
         
          RaisedButton(
            onPressed: (){
              fb.child("LED_STATUS").set("ON");
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("LED ON",style: TextStyle(color:Colors.white,fontSize: 25.0),),
            ),
            color:Colors.red,
          ),
          
          RaisedButton(
            onPressed: (){
              fb.child("LED_STATUS").set("OFF");
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("LED OFF",style: TextStyle(color:Colors.white,fontSize: 25.0),),
            ),
            color:Colors.red,
          ),
        ],
      ),
    );
  }
}