import 'dart:async';

import 'package:fitflair/Exercises/Cardio/Exercise3.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget{
  Exercise2({Key? key}) : super(key: key);

  @override
  State<Exercise2> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise2> {

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
    imageToUse = 'assets/uuu.avif';
    
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: Column(
          children: [
            Image.asset(imageToUse),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Spot jumps',
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
              CircleAvatar(backgroundColor: const Color.fromRGBO(33, 150, 243, 0.5),
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
            SizedBox(height: 20,),
            ElevatedButton(
             onPressed:(){ 
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> Exercise3()));
                  },
             child: Padding(padding: EdgeInsets.all(20),
             child: Text('Next exercise',
             style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 2, 34, 61)
             ),),))
          ],
        ),
      ),
    );
  }
}