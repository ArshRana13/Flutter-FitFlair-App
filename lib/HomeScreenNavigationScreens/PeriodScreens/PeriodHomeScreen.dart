import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Eco.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/PeriodTracking/input.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions.dart';
import 'package:flutter/material.dart';

class PeriodHomeScreen extends StatelessWidget{
  PeriodHomeScreen({super.key});
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/female-reproductive-system-concept_52683-45670.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

     body: ListView(
      children: [
        Center(
        child: Image.asset(imageToUse),
      ),
      SizedBox(height:30),
      Center(
        child: Container(
          height: 150,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(111, 231, 255, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Input()));
              },
              child : Center(child: Text('Track your periods',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
        )
            )
        ),
      ),
      SizedBox(height:50),
      Center(
        child: InkWell(
          onTap:(){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> Questions()));
          },
          child:Container(
          height: 150,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(184, 219, 77, 0.294),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Questions you\nmight have',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
        )
        )
        ),
      ),
      SizedBox(height:50),
      Center(
        child: InkWell(
          onTap:()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Eco()));
          },
          child:Container(
          height: 150,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(255, 111, 205, 0.294),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Eco-friendly options\nfor menstrual\nproducts',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            )
            ,)
            )
        )
        ),
      ),
      SizedBox(height: 100,)
      ],
     
    )
    );
  }
}