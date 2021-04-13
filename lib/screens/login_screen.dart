
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:irrigation_system/screens/registration.dart';
import 'dart:async';
import 'forgot_password.dart';
import 'home.dart';
import 'loading.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  
  final GlobalKey<FormState> _formkey = GlobalKey();
  String _email,_password;
  String error;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Irrigation System"),
      ),

      body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/images/capture.png',
                  width: 450,
                  height: 150,
                  ),
                ),
                if(error!=null)
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: 
                  Text('$error',style: TextStyle(fontSize: 20.0,color: Colors.red),),
                ),
                Form(
                  key: _formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: TextFormField(
                            onSaved: (value) => _email = value,
                            validator: (value){
                              if(value.isEmpty){
                                return "Enter email.";
                              }else return null;
                            },
                          
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Email",
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.green),
                               
                            ),
                          ),
                          
                          
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: TextFormField(
                            onSaved: (value) => _password= value,
                            validator: (value){
                              if(value.length < 6){
                                return "Password should be of at least 6 characters";
                              }else return null;
                              
                            },
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                          obscureText: true,
                          ),
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => forgot_password()));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 20.0,right: 0.0),
                              child: Text('Forgot Password?',textAlign: TextAlign.right,style: TextStyle(fontSize: 23.0,color: Colors.green[500],),)),
                            ),
                        ],
                      ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            
                            children: [
                              RaisedButton(
                                onPressed: signIn,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Login",
                                  style: TextStyle(color: Colors.white, fontSize: 25.0),),
                                ),
                                color: Colors.red[500],
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => registration()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Sign Up",
                                  style: TextStyle(color: Colors.white, fontSize: 25.0),),
                                ),
                                color: Colors.green[500],
                              ),
                             
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
        ),
      
      
    );
    
  }
Future<void> signIn() async
{
  final formstate =_formkey.currentState;
  if(formstate.validate()){
    formstate.save();
    try{
     await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
    }catch(e){
      print(e.message);
      setState(() {
              error = '* Invalid Email or Password';
            });
    }
    
  }

  }


}



