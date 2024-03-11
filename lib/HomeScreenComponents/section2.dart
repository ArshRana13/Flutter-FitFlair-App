import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreenHomeScreen.dart';
import 'package:flutter/material.dart';

class Section2 extends StatelessWidget
{
 @override
 Widget build(BuildContext context)
 {
      final pregnantWomenImage = 'assets/nutrition.avif';
       return Center(
         child: Column(
          children:[
            InkWell(
          onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen1()));
          },
            child: ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child: Image.asset(
            pregnantWomenImage,
            width: 300,
            height:200,
            fit: BoxFit.fitWidth
           )
               )
            ),
               SizedBox(height: 10,),
               const Text('Nutrition Section',
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
       );
 }
}