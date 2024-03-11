import 'dart:async';

import 'package:fitflair/Exercises/Cardio/Exercise3.dart';
import 'package:fitflair/Exercises/Yoga/Yoga2.dart';
import 'package:flutter/material.dart';

class Yoga1 extends StatefulWidget{
  Yoga1({Key? key}) : super(key: key);

  @override
  State<Yoga1> createState() => _ExerciseState();
}

class _ExerciseState extends State<Yoga1> {

  int timeLeft = 5;
  String content ="Start";
  void _startTimer()
  {
    Timer.periodic(Duration(seconds: 1), (timer) { 
      if(timeLeft>0)
      {
      setState(() {
        //do smth
        timeLeft--;
        content = timeLeft.toString();
      });
      }
      else{
        setState(() {
          content = "Done";
        });
      }
    });
  }
  @override
  Widget build(BuildContext context)
  {
    String imageToUse="";
    imageToUse = 'assets/yoga2.avif';
    
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: Column(
          children: [
            Image.asset(imageToUse),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Sukhasana',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: 
              InkWell(
                onTap:(){
                  if(content == "Start")
                  {
                    setState(() {
                      content = timeLeft.toString();
                      _startTimer();
                    });
                  }
                },
                child:
              CircleAvatar(backgroundColor: Color.fromRGBO(64, 226, 123, 0.4),
              radius: 80,
              child: Center(
                child: Text(
                  content,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 32
                ),),
              ),),)
            ),
            SizedBox(height: 25,),
            ElevatedButton(
             onPressed:(){ 
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> Yoga2()));
                  },
             child: Padding(padding: EdgeInsets.all(20),
             child: Text('Next Assan',
             style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 2, 61, 27)
             ),),))
          ],
        ),
      ),
    );
  }
}