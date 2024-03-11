import 'package:fitflair/HomeScreenComponents/section1.dart';
import 'package:fitflair/HomeScreenComponents/section2.dart';
import 'package:fitflair/HomeScreenComponents/section3.dart';
import 'package:fitflair/HomeScreenComponents/section4.dart';
import 'package:fitflair/HomeScreenComponents/section5.dart';
import 'package:fitflair/HomeScreenComponents/section6.dart';
import 'package:fitflair/HomeScreenComponents/section7.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
 HomeScreen(this.name,{super.key});
  String name;
  @override
  Widget build(BuildContext context)
  {
    final homeScreenImage = 'assets/morning.avif';
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: ListView(
        children: [ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child: Image.asset(
            homeScreenImage,
            width: 400,
            height:350,
            fit: BoxFit.fitWidth
           ),
        ),
        SizedBox(height: 20,),
          Center(
            child: Text(
            'Good morning, $name',
            style: TextStyle(
              color: Color(0xFF164741),
              fontSize: 28,
              fontFamily: 'Merriweather Sans',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
                    ),
          ),    
          SizedBox(height: 30,),
          Section1(),
          SizedBox(height: 20,),
          Section2(),
          SizedBox(height: 20,),
          Section3(),
           SizedBox(height: 20,),
          Section4(),
           SizedBox(height: 20,),
          Section5(),
           SizedBox(height: 20,),
          Section6(),
          SizedBox(height: 20,),
          Section7(),
        ],
      ),
    );
  }
}

