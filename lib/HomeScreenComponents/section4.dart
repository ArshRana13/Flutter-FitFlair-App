import 'package:fitflair/Exercises/ExercisesHome.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/PeriodHomeScreen.dart';
import 'package:flutter/material.dart';

class Section4 extends StatelessWidget
{
 @override
 Widget build(BuildContext context)
 {
      final pregnantWomenImage = 'assets/flat-hand-drawn-online-sport-classes_23-2148810197.avif';
       return Center(
         child:
         InkWell(
        onTap:(){ 
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> ExercisesHome()));
                  },
         child: Column(
          children:[
            ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child: Image.asset(
            pregnantWomenImage,
            width: 300,
            height:200,
            fit: BoxFit.fitWidth
           )
               ),
               SizedBox(height: 10,),
               const Text('Weight loss Section',
                style: TextStyle(
              color:  Color.fromRGBO(33, 0, 40, 1),
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ),
            SizedBox(height: 40,)
               ]
               )),
       );
 }
}

//abstract-female-reproductive-system-concept_23-2148661931.avif