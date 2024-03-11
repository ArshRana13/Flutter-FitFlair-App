import 'package:flutter/material.dart';
class NutritionScreen23 extends StatelessWidget
{
  const NutritionScreen23({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/carb-cycling-abstract-illustration_335657-5250.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body:
      Column(children: [
        Center(
          child: Image.asset(
            imageToUse,
            height: 350,
          ),
        ),
        Center(
          child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(231, 215, 111, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Chicken salad\nCalories: 593',
            style: TextStyle(
              color:  Color.fromRGBO(135, 118, 10, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
            ),
          ),
        ),
        SizedBox(height: 30,),
         Center(
           child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(231, 215, 111, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Hummus sandwich\nCalories: 512',
            style: TextStyle(
              color:  Color.fromRGBO(135, 118, 10, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
            ),
                   ),
         ),
        SizedBox(height: 30,),
         Center(
           child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(231, 215, 111, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Egg salad\nCalories: 546',
            style: TextStyle(
              color:  Color.fromRGBO(135, 118, 10, 1),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
            ),
                   ),
         )
      ],)
    );
  }
}