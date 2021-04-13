import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

import 'home.dart';

class crops_parameters extends StatefulWidget {
  @override
  _crops_parametersState createState() => _crops_parametersState();
}

class _crops_parametersState extends State<crops_parameters> {
  @override
  
  String type_of_crop;
  String stage_of_crop;

Future<void> sendData()async
{
 
  final fb = FirebaseDatabase.instance.reference();
  fb.child("Type_of_Crop").set(type_of_crop);
  fb.child("Stage_of_Crop").set(stage_of_crop);
  
}

  
  List crops = ["Wheat","Maze"];
  List stage = ["stage 1","Stage 2", "stage 3", "Stage 4"];


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45.0), bottomRight: Radius.circular(45.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              color: Colors.green[500],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:88.0),
                    child: Text("Smart Irrigation System",textAlign: TextAlign.center,style:TextStyle(fontSize: 28.0, color:Colors.white,),),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              margin: EdgeInsets.only(top:18.0),
              child: Column(
                children: [
                  DropdownButton(
                    hint:Text("Select Type of Crop"),
                    icon:Icon(Icons.arrow_drop_down),
                    iconSize: 30.0,
                    isExpanded: true,
                    value: type_of_crop,
                    onChanged: (value){
                      setState(() {
                              type_of_crop = value;
                                          });
                    },  //onchanged

                    items: crops.map((valueitem){
                      return DropdownMenuItem(
                        value:valueitem,
                        child:Text(valueitem),
                      );
                    }).toList(),
                  ),
                  
                DropdownButton(
                    hint:Text("Select Stage of Crop"),
                    icon:Icon(Icons.arrow_drop_down),
                    iconSize: 30.0,
                    isExpanded: true,
                    value: stage_of_crop,
                    onChanged: (value){
                      setState(() {
                              stage_of_crop = value;
                                          });
                    },  //onchanged

                    items: stage.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),
                      );
                    }).toList(),
                  ),

                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top:30.0),
            child: RaisedButton(
              color:Colors.green,
              onPressed: (){
                sendData();
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => home()));
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Send To Cloud",style: TextStyle(color: Colors.white, fontSize:25.0, fontWeight:FontWeight.w700,),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}