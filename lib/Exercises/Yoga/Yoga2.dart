import 'dart:async';

import 'package:fitflair/Exercises/Cardio/Exercise3.dart';
import 'package:fitflair/Exercises/ExercisesHome.dart';
import 'package:flutter/material.dart';

class Yoga2 extends StatefulWidget{
  Yoga2({Key? key}) : super(key: key);

  @override
  State<Yoga2> createState() => _ExerciseState();
}

class _ExerciseState extends State<Yoga2> {

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
    imageToUse = 'assets/yoga1.jpg';
    
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: Column(
          children: [
            Image.asset(imageToUse),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Bhujangasana',
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