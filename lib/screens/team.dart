import 'package:flutter/material.dart';

class team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Team"),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           
           Container(
             margin: EdgeInsets.only(top:20.0),
             child: Column(
               children: [
                 Text("About", style: TextStyle(fontSize:30.0, fontWeight: FontWeight.w700),),
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Text("This is a Mobile Application for Semi-Supervised Smart Irrigation System. We are team of four Engineers from COMSATS University Lahore. And this is our Final Year Project. This System is designed to reduce the work load of farmers and produce good productivity of crops by providing innovation in IRRIGATION methods. Temperature and humidity sensors and soil moisture sensors are embedded into the crop field which are sending the reletive parameters to the cloud upon which Tubewell will be scheduled for Irrigation. ",
                   textAlign: TextAlign.justify, style: TextStyle(color: Colors.green, fontSize: 20.0),),
                 ),
                 Text("Project Supervisor", style: TextStyle(fontSize: 30.0, fontWeight:FontWeight.w700),),
                 Container(
                   margin: EdgeInsets.only(top:20.0),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                image: AssetImage('assets/images/usmanrafique.jpg'),
	                fit: BoxFit.fill
	                ),
              ),
       ),

               Column(
              children: [
                Text("Muhammad Usman Rafique", style:TextStyle(fontSize:25.0, fontWeight:FontWeight.w700, color: Colors.green),),
                Text("Assistant Professor ECE-Dept. CUI-Lahore", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w400, color: Colors.black),),
                Text("usmanrafique@cuilahore.edu.pk", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
              ],
            ),

          Container(
            margin: EdgeInsets.only(top:25.0, bottom: 25.0),
            child: Text("Team Members", style: TextStyle(fontSize: 30.0, fontWeight:FontWeight.w700),)),
          
               ],
             ),
           ),

        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                   margin: EdgeInsets.only(top:20.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                image: AssetImage('assets/images/ali.jpg'),
	                fit: BoxFit.fill
	                ),
              ),
       ),
               Container(
                   margin: EdgeInsets.only(top:20.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                image: AssetImage('assets/images/mehran.jpg'),
	                fit: BoxFit.fill
	                ),
              ),
       ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
              children: [
                Text("Ali Mohsin", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w700, color: Colors.green),),
                Text("Mobile App Developer", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w400, color: Colors.black),),
                Text("Fa17-BCE-016", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
              ],
            ),

             Column(
              children: [
                Text("Mehran Zahid", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w700, color: Colors.green),),
                Text("Embedded Engineer", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w400, color: Colors.black),),
                Text("FA17-BCE-030", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
              ],
            ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                   margin: EdgeInsets.only(top:20.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                image:AssetImage('assets/images/khattak.jpg'),
	                fit: BoxFit.fill
	                ),
              ),
       ),

              Container(
                   margin: EdgeInsets.only(top:20.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                image:AssetImage('assets/images/faizan.jpg'),
	                fit: BoxFit.fill
	                ),
              ),
       ),

              
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
              children: [
                Text("Basit Khattak", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w700, color: Colors.green),),
                Text("AI Engineer", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w400, color: Colors.black),),
                Text("Fa17-BCE-108", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
              ],
            ),

             Column(
              children: [
                Text("Faizan Siddiqui", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w700, color: Colors.green),),
                Text("UI / UX Expert", style:TextStyle(fontSize:18.0, fontWeight:FontWeight.w400, color: Colors.black),),
                Text("FA17-BCE-048", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
              ],
            ),
              ],
            ),
          ],
        ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
          ),
          ],
        ),
      ),
    );
  }
}