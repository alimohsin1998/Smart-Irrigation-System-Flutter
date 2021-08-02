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
	                image: NetworkImage('https://scontent.flhe3-1.fna.fbcdn.net/v/t31.0-8/10896245_729135917154615_1950053990139545697_o.jpg?_nc_cat=111&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeG5UVwiMpS68UCfyhDcny0k7tEIDjDTVhvu0QgOMNNWG5k1-ShOgeH2yABqg0uedl1KyA24OkypaSFsUMSKmfmD&_nc_ohc=pT7ydBIxQk0AX-9Agla&_nc_ht=scontent.flhe3-1.fna&oh=53c372d928db8a3ca150c19ceb7b69b2&oe=604F7289'),
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
	                image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQEavB0fLvaA4Q/profile-displayphoto-shrink_800_800/0/1605984258942?e=1619049600&v=beta&t=agq9x485Oq7Gr2TijwJnboni8i_SzqGqm3FFfWBaPzY'),
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
	                image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQEjjydS0YSCfA/profile-displayphoto-shrink_800_800/0/1592298787095?e=1619049600&v=beta&t=-75VHqya6WsRbe9kQYcdAeO_0LdhnTv1YMa_BcwuTnU'),
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
                Text("FA17-BCE-032", style:TextStyle(fontSize:15.0, fontWeight:FontWeight.w300, color: Colors.black),),
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
	                image: NetworkImage('https://scontent.flhe3-1.fna.fbcdn.net/v/t1.0-9/48424432_970357103158270_4978805151281184768_o.jpg?_nc_cat=108&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeEBYFaviao3xUKH83zHLcQNeuQw-yrNbk965DD7Ks1uTx0fnYNrG6AswcJjUqxRn-IeRsZxNCmHfuWptIbXJlmz&_nc_ohc=uoOxzD4ClZ8AX-Wzbdj&_nc_ht=scontent.flhe3-1.fna&oh=e6dc64d771363137e096297bb6fff302&oe=604FE303'),
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
	                image: NetworkImage('https://scontent.flhe3-1.fna.fbcdn.net/v/t1.0-9/142888329_1893728670791779_37567568638196633_o.jpg?_nc_cat=103&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeEWw5heRuCRxv9wHJbFj89PLQ6QUrfg-EotDpBSt-D4SjleIt-AsSgScCDZeT9MXFI0HMJqFoyb9JNvwh_2qG6J&_nc_ohc=KEOe537AwGEAX-Jzd2D&_nc_ht=scontent.flhe3-1.fna&oh=c272f90395f700335233c946a99c221c&oe=604E8EE0'),
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