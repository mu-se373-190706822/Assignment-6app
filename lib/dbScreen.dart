import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class dbScreen extends StatefulWidget {
  const dbScreen({Key? key}) : super(key: key);

  @override
  State<dbScreen> createState() => _dbScreenState();
}

class _dbScreenState extends State<dbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("data page"),),
    body:Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
        Text("username: helen"),
        SizedBox(height: 20,),
        Text("email: helen@gmail.com"),
        SizedBox(height: 20,),
        Text("passowrd: abc"),
        SizedBox(height: 20,),
        Text("gender: female"),
        RaisedButton(child: const Text("logout"),onPressed: (){
          Navigator.pushNamed(context, '/home');
        })
      ],),
    ) );
  }
}
