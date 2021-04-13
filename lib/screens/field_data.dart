import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class field_data extends StatefulWidget {
  @override
  _field_dataState createState() => _field_dataState();
}

class _field_dataState extends State<field_data> {
  
  
  String soil_moisture = "";
  String temperature = "";
  String humidity = "";

  Future<void> getData() async{
    final fb = FirebaseDatabase.instance.reference().child("field data");
    fb.child("humidity").once().then((DataSnapshot data){
      setState(() {
          humidity = data.value.toString();            
            });
            
    });

    fb.child("temp").once().then((DataSnapshot data){
      setState(() {
          temperature = data.value.toString();            
            });
    });

    fb.child("soil moisture").once().then((DataSnapshot data){
      setState(() {
          soil_moisture = data.value.toString();            
            });
    });
  } 


  @override

  void initState(){
    super.initState(); 
    getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
           
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(45.0), bottomRight:Radius.circular(45.0), ),
              child: Container(
                height:MediaQuery.of(context).size.height/4,
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top:55.0),
                color: Colors.green,
                child: Text("Field Parameters",textAlign: TextAlign.center,style:TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700, color:Colors.white,fontFamily: "Times New Roman"),),

              ),
            ),

            
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.thermostat_rounded,color:Colors.blue,size:40.0),
                            title: Text("Temperature ",style: TextStyle(fontSize:25.0),),
                            trailing: Text("$temperature \u00B0C",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                            ),

                         ListTile(
                            leading: Icon(Icons.invert_colors,color:Colors.blue,size:40.0),
                            title: Text("Humidity",style: TextStyle(fontSize:25.0),),
                            trailing: Text("$humidity %",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                            ),

                         ListTile(
                            leading: Icon(Icons.waves,color:Colors.blue,size:40.0),
                            title: Text("Soil Moisture",style: TextStyle(fontSize:25.0),),
                            trailing: Text("$soil_moisture %",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                            ),
                    ],),),
                  
                  Padding(padding: EdgeInsets.only(top: 35.0),),

                  RaisedButton(
                    onPressed: getData,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Refresh Data",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white,),
                  ),
                  
                            ), color: Colors.green[500],         ),
          ],
        ),
 
      
    );
  }
}