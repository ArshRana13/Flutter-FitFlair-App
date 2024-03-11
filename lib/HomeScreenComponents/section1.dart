import 'package:fitflair/HomeScreenNavigationScreens/pregnantWomenSection/pregnantHomeScreen.dart';
import 'package:flutter/material.dart';

class Section1 extends StatelessWidget
{
 @override
 Widget build(BuildContext context)
 {
      final pregnantWomenImage = 'assets/pregnant3.avif';
       return InkWell(
        onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => PregnantHome()));
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
               const Text('Pregnant Women Section',
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
       )
       );
 }
}