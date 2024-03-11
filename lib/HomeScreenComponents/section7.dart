import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/PeriodHomeScreen.dart';
import 'package:fitflair/HomeScreenNavigationScreens/water.dart';
import 'package:flutter/material.dart';

class Section7 extends StatelessWidget
{
 @override
 Widget build(BuildContext context)
 {
      final pregnantWomenImage = 'assets/water-concept-illustration_114360-8494.avif';;
       return InkWell(
        onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Water()));
          },
        child: Center(
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
               const Text('Water tracker',
                style: TextStyle(
              color:  Color.fromRGBO(33, 0, 40, 1),
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ),
            SizedBox(height: 40,)
               ]
               ),
       ));
 }
}

//abstract-female-reproductive-system-concept_23-2148661931.avif