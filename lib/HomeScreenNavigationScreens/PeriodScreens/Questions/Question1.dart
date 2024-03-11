import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions/ComponentMaker.dart';
import 'package:flutter/material.dart';

class Question1 extends StatelessWidget
{
  Question1({super.key});
  @override
  Widget build (BuildContext context)
  {
   final imageToUse = 'assets/eating-dessert-concept-illustration_114360-16094.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body:Center(
        child: ListView(children: [
          Image.asset(imageToUse),
          ComponentMaker("Salmon"),
          ComponentMaker("Bananas"),
          ComponentMaker("Dark chocolate"),
          ComponentMaker("Broccoli"),
          ComponentMaker("Nuts"),
          ComponentMaker("Berries"),
          ComponentMaker("Oranges"),
          ComponentMaker("Yogurt"),
          ComponentMaker("Green tea"),
          ComponentMaker("Chamomile tea"),
          ComponentMaker("Chicken"),
          ComponentMaker("Quinoa"),
          ComponentMaker("Tofu"),
        ],),
      )
    );
  }
}