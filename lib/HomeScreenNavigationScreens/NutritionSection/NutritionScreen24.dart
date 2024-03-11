import 'package:flutter/material.dart';
class NutritionScreen24 extends StatelessWidget
{
  const NutritionScreen24({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/healthy-food-concept-dish-with-fresh-fruits-vector-illustration_572614-147.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body:
      Column(children: [
       // SizedBox(height: 10,),
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
            decoration: BoxDecoration(color: Color.fromRGBO(50, 235, 229, 0.345),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Apple\nCalories: 100',
            style: TextStyle(
              color:  Color.fromRGBO(1, 69, 67, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(50, 235, 229, 0.345),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Boiled eggs\nCalories: 112',
            style: TextStyle(
              color:  Color.fromRGBO(1, 69, 67, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(50, 235, 229, 0.345),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Roasted chickpeas\nCalories: 115',
            style: TextStyle(
              color:  Color.fromRGBO(1, 69, 67, 1),
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