import 'package:flutter/material.dart';

class sensor_status extends StatefulWidget {
  @override
  _sensor_statusState createState() => _sensor_statusState();
}

class _sensor_statusState extends State<sensor_status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Sensor Nodes Status'),),
      body: sensor(),
    );
  }
}

class sensor extends StatefulWidget {
  @override
  _sensorState createState() => _sensorState();
}

class _sensorState extends State<sensor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Sensor Nodes Information',textAlign: TextAlign.center,style: TextStyle(fontSize: 38.0, color: Colors.green[500]),),
          Expanded(
            child: ListView(
              children:<Widget> [
                ListTile(
                      leading: Icon(Icons.device_hub,color:Colors.red,size:40.0),
                      title: Text("Sensor Node 1",style: TextStyle(fontSize:25.0),),
                      trailing: Text("Active",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),
                ListTile(
                      leading: Icon(Icons.device_hub,color:Colors.red,size:40.0),
                      title: Text("Sensor Node 2",style: TextStyle(fontSize:25.0),),
                      trailing: Text("Disable",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),
                ListTile(
                      leading: Icon(Icons.device_hub,color:Colors.red,size:40.0),
                      title: Text("Sensor Node 3",style: TextStyle(fontSize:25.0),),
                      trailing: Text("Disable",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),

              ],
            ),
          ),
          RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Get Sensors Status',style: TextStyle(fontSize: 18.0, color: Colors.white),),
            ),
            onPressed: (){},
            color: Colors.green[500],
          ),
        ],
      ),
    );
  }
}