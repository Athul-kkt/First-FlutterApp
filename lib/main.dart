import 'package:flutter/material.dart';
import './MyHomePage.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=> LounchScreen(),
        '/home':(context)=>MyHomePage('Quiz App')
      },
    );
  }
}
class LounchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
    body: Center(
      child: 
      Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        <Widget>[
             Text("Quiz App",style: TextStyle(fontSize:30,color: Colors.red,fontWeight: FontWeight.bold ),),
             Text("Are You Ready",style: TextStyle(fontSize:15),),
             RaisedButton(
               color: Colors.blue,
               textColor: Colors.white,
               child: 
               Text("START",style: TextStyle(fontSize:20),), 
               onPressed: ()=>Navigator.pushNamed(context, '/home')
               ),
        ],
      )
    ),
    );
  }
}



