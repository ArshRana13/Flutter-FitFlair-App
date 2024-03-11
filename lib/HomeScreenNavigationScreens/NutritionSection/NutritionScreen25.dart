import 'package:flutter/material.dart';
class NutritionScreen25 extends StatelessWidget
{
  const NutritionScreen25({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/healthy-food-concept-illustration_114360-13376.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body:
      Column(children: [
        //SizedBox(height: 10,),
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
            decoration: BoxDecoration(color: Color.fromRGBO(0, 69, 25, 0.381),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Cabbage soup\nCalories: 312',
            style: TextStyle(
              color:  Color.fromRGBO(1, 40, 15, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(0, 69, 25, 0.381),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Tomato salad\nCalories: 358',
            style: TextStyle(
              color:  Color.fromRGBO(1, 40, 15, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(0, 69, 25, 0.381),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Chicken noodle soup\nCalories: 415',
            style: TextStyle(
              color:  Color.fromRGBO(1, 40, 15, 1),
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