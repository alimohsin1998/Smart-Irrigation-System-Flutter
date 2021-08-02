import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class weather extends StatefulWidget {
  @override
  _weatherState createState() => _weatherState();
}


class _weatherState extends State<weather> {
var temperature;
var humidity;
var precipitation;
var rain;
var visibility;
var wind;
var status;
var description;
String url="api.openweathermap.org/data/2.5/weather?q=lahore&units=metric&appid=12e4c6d527682be1fe5033b7e6308144";

Future getWeather()async{
    final http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=lahore&units=metric&appid=12e4c6d527682be1fe5033b7e6308144'));
    var results =jsonDecode(response.body);
    
    setState(() {
          this.temperature = results['main']['temp'].toString(); 
          this.precipitation=results['weather'][0]['id'].toString(); 
          this.visibility = results['visibility'].toString();
          this.wind = results['wind']['speed'].toString();
          this.humidity = results['main']['humidity'].toString();
          this.status = results['weather'][0]['main'].toString();
          this.description = results['weather'][0]['description'].toString();    
print(temperature);
          if(precipitation == "500" || precipitation == "501" || precipitation == "502" || precipitation == "503" ||precipitation == "504")
      rain = "Yes";
      else rain="0 %";
    
        });
          
}


  @override  
  void initState(){
    super.initState();
    this.getWeather();
  }
@override

  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45.0), bottomRight: Radius.circular(45.0)),
                child: Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:40.0),
                        child: Text("Current Weather in Lahore, PK",style:TextStyle(fontSize:20.0, color:Colors.white, fontWeight:FontWeight.w400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Text("$temperature\u00b0 C",style:TextStyle(fontSize:50.0, color:Colors.white, fontWeight:FontWeight.w400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:28.0),
                        child: Text("Humidity: $humidity" + "%" + " , Description: $description",style:TextStyle(fontSize:20.0, color:Colors.white, fontWeight:FontWeight.w400),),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView (
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.thermostat_rounded,color:Colors.red,size:40.0),
                      title: Text("Temperature ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$temperature\u00B0 C",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),

                    ListTile(
                      leading: Icon(Icons.waves,color:Colors.blue,size:40.0),
                      title: Text("Wind Speed ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$wind m/s",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),

                    ListTile(
                      leading: Icon(Icons.invert_colors,color:Colors.red,size:40.0),
                      title: Text("Humidity ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$humidity %",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),

                    ListTile(
                      leading: Icon(Icons.clear_all,color:Colors.red,size:40.0),
                      title: Text("Visibility ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$visibility m",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),

                    ListTile(
                      leading: Icon(Icons.cloud,color:Colors.blue,size:40.0),
                      title: Text("Rain ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$rain",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),


                    ListTile(
                      leading: Icon(Icons.remove_circle,color:Colors.green,size:40.0),
                      title: Text("Current Status ",style: TextStyle(fontSize:25.0),),
                      trailing: Text("$description",style: TextStyle(fontSize:20.0,color:Colors.red[500]),),
                    ),
                    
                   

                  ],
                ),
              ),
          
            ],
          ),
      
      
    );
  }
}