import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';


class forgot_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password'),
      ),
      body: password(),
    );
  }
}

class password extends StatefulWidget {
  @override
  _passwordState createState() => _passwordState();
}

class _passwordState extends State<password> {
    String error;
   final GlobalKey<FormState> _formkey = GlobalKey();
   String _email;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text('* A Link will be generated to Reset your password. And that link will be sent on youjr email After clicking on "Change Password" button.',textAlign: TextAlign.justify,style: TextStyle(fontSize: 15.0, color:Colors.black,),),
          if(error!=null)
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          child: Text('$error',style: TextStyle(fontSize: 20.0, color:Colors.red,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Form(
              key: _formkey,
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
          ),
          Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: RaisedButton(
              onPressed: (){
                try{
                  CircularProgressIndicator();
                  if(_formkey.currentState.validate()){
                  _formkey.currentState.save();
                  FirebaseAuth.instance.sendPasswordResetEmail(email: _email);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_screen()));
                }
                }catch(e){
                  setState(() {
                                      error = 'No Record Found';
                                    });
                  print(e.messsage);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Change Password',style: TextStyle(fontSize: 23.0, color:Colors.white),),
              ),
              color: Colors.green[500],
              ),
          ),
    
        ],
      ),
    );
  }
}