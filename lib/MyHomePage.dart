import 'package:flutter/material.dart';
import './Questions.dart';
import './map.dart';
import './Answer.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage( this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _qstionNumber = 0;
  var value=[];
  var score=0;
  //funtion to reset the qustions
  void _reSetQustions(){
    setState(() {
    _qstionNumber=0;
    value=[];
    score=0;
    });
   }

  //funtion to change the qustion and answer variable
  void answerSelect(select){
    value.add(select);
    score=score+(qustion[(qustion.keys.elementAt(_qstionNumber))][select]);
    setState(() {
    _qstionNumber++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        //work's only whwn the value is less than 2
        child: _qstionNumber<=1 ?  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

             //calling the qustion class
            Question(
              qustion.keys.elementAt(_qstionNumber)
            ),
            
            //calling the answer class
            ...qustion[(qustion.keys.elementAt(_qstionNumber))]
            .keys.map((answer)=>Answer(answerSelect,answer))
        
          ],
        
         //work's only when the value is greater than 2

        ): Center( 
            child:
              Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text("You Done it",style: TextStyle(fontSize:25,color: Colors.red),),
                Text("Your Score : $score " ,style: TextStyle(fontSize:25,color: Colors.red),),
                Text("Your favorite color is " + value[0] ,style: TextStyle(fontSize:25,color: Colors.black),),
                Text("Your favorite animal is "+ value[1]  ,style: TextStyle(fontSize:25,color: Colors.black),),

                FloatingActionButton(
                onPressed:_reSetQustions,
                tooltip: 'Retry',
                child: Icon(Icons.restore),
            ),
             ]
          )
        ),
      ),
    );
  }
}