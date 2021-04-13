
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:irrigation_system/screens/sensor_status.dart';
import 'package:irrigation_system/screens/team.dart';
import 'package:irrigation_system/screens/weather.dart';
import 'crops_parameters.dart';
import 'history.dart';
import 'login_screen.dart';
import 'field_data.dart';
import 'loading.dart';


class home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Smart Irrigation System"),),

      body:  Container(
             color: Colors.white,
             padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Text("Welcome !", style:TextStyle(fontSize:40.0, fontWeight:FontWeight.w700, color:Colors.green[800],),),
                    Text("Semi-Supervised Smart Irrigation System", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w500, color:Colors.green[800],),),
                  ],
                ),
                
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 4, color: Colors.green[500],)
                    ),
                    margin: EdgeInsets.only(top: 20.0),
                    width: 120, 
                    height: 100,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => team()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.assignment,
                          size: 40.0,
                          color: Theme.of(context).primaryColor,
                          ),
                          Text("About", style: TextStyle(fontSize: 20.0, color: Colors.green),),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => history()));
                    },
                    child: Container( 
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 4, color: Colors.green[500],)
                      ),
                      width: 120, 
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.app_registration,
                          size: 40.0,
                          color: Theme.of(context).primaryColor,
                          ),
                          Text("History", style: TextStyle(fontSize: 20.0, color: Colors.green),),
                        ],
                      ),
                    ),
                  ),
                    ],
                  ),
                
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => weather()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 4, color: Colors.green[500],)
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  width: 120, 
                  height: 100,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud,
                        size: 40.0,
                        color: Theme.of(context).primaryColor,
                        ),
                        Text("Rain Patterns", style: TextStyle(fontSize: 20.0, color: Colors.green),
                        textAlign: TextAlign.center,),
                      ],
                  ),
                ),
                    ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => field_data()));
                  },
                  child: Container( 
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 4, color: Colors.green[500],)
                    ),
                    width: 120, 
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.waves,
                        size: 40.0,
                        color: Theme.of(context).primaryColor,
                        ),
                        Text("Field Data", style: TextStyle(fontSize: 20.0, color: Colors.green),),
                      ],
                    ),
                  ),
                ),
                
                  ],
                ),

                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 4, color: Colors.green[500],)
                    ),
                    margin: EdgeInsets.only(top: 20.0),
                    width: 120, 
                    height: 100,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => crops_parameters()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fact_check,
                          size: 40.0,
                          color: Theme.of(context).primaryColor,
                          ),
                          Text("Crops Parameters", style: TextStyle(fontSize: 20.0, color: Colors.green),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sensor_status()));
                    },
                    child: Container( 
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 4, color: Colors.green[500],)
                      ),
                      width: 120, 
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.app_registration,
                          size: 40.0,
                          color: Theme.of(context).primaryColor,
                          ),
                          Text("Sensor Nodes",textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.green),),
                        ],
                      ),
                    ),
                  ),
                    ],
                  ),
                Column(
                  children: [
                    
                     Container(

                        margin: EdgeInsets.only(top:30.0),
                        height: 50.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(50),)
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_screen()));
                            },
                            child: Text("Log Out", style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight:FontWeight.w700),))),
                          ),
                        
                  ],
                ),
              ],
            ),
          ),
      );
  }

}