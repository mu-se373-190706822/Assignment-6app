import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:login_regaister/dbScreen.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController user = TextEditingController();
  TextEditingController pass= TextEditingController();


  Future login()async{
    var url = "http://192.168.1.33:8080/indexlogin.php";
    final response = await http.post(Uri.parse(url),body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    Navigator.pushNamed(context,'/data');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("login page"),),
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(40, 15, 40, 0),
        child: Column(children: [
          Center(child: Text("login",style: TextStyle(fontSize: 40),)),
          TextFormField(onChanged: (vel){},),
          SizedBox(height: 20,),
          TextFormField(obscureText: true,onChanged: (vel){},),
          SizedBox(height: 20,),
          RaisedButton(onPressed: login,child: Text("log in"),),
        ],),
      )
    ],),);
  }
}
