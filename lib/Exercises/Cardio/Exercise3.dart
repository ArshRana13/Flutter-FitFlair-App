import 'dart:async';

import 'package:fitflair/Exercises/ExercisesHome.dart';
import 'package:fitflair/Screens/homeScreen.dart';
import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget{
  Exercise3({Key? key}) : super(key: key);

  @override
  State<Exercise3> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise3> {

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
    imageToUse = 'assets/lmao.jpg';
    
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: Column(
          children: [
            Image.asset(imageToUse),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Knee Squats',
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
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed:(){ 
                   Navigator.pop(context);
                   Navigator.pop(context);
                   Navigator.pop(context);
                  },
             child: Padding(padding: EdgeInsets.all(20),
             child: Text('Yayy! You did it.',
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