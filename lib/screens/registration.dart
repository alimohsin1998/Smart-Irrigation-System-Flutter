import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class registration extends StatefulWidget {
  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
    final GlobalKey<FormState> _formkey = GlobalKey();
    String _name, _email, _password,error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("User Registration"),),
      body: Container(
        margin: EdgeInsets.only(top:25.0),
        child: Column(
          children: [
        
        Form(
          key: _formkey,
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                if(error!=null)
                Padding(
                  padding: EdgeInsets.only(top:18.0, bottom: 18.0),
                  child: Text('$error',style: TextStyle(fontSize: 20.0, color:Colors.red),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  child: TextFormField(
                    onSaved: (value) => _name = value,
                    validator: (value){
                      if(value.isEmpty)
                        return "Enter Your Name";
                      return null;
                    },
                    decoration: InputDecoration(
                     hintText: "Name",
                     labelText: "Full Name",
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.green),
                                 
                              ),

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  child: TextFormField(
                    onSaved: (value) => _email = value,
                    validator: (value){
                      if(value.isEmpty)
                        return "Enter Your email";
                      return null;
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
                    onSaved: (value) => _password = value,
                    validator: (value){
                      if(value.length < 6)
                        return "Password should be of at least 6 characters";
                      return null;
                    },
                    decoration: InputDecoration(
                     hintText: "Enter Password",
                     labelText: "Password",
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.green),
                                 
                              ),
                     
                    ),
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  onPressed: signUp,
                  color: Colors.green[500],
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Register",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      
                    ),),
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
  Future<void> signUp() async{
    final formstate = _formkey.currentState;
    if(formstate.validate()){
      formstate.save();
      try{
          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
          Navigator.pop(context);
      }catch(e){
        print(e.message);
      }
    }
  }
}