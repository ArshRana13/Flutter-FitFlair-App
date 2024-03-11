import 'package:flutter/material.dart';
class NutritionScreen6 extends StatelessWidget{
  const NutritionScreen6({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/eating-korean-food-concept-illustration_114360-14618.jpg';
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
            decoration: BoxDecoration(color: Color.fromRGBO(111, 176, 255, 0.494),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Apple almond sandwich \n Protein: 15g',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
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
            decoration: BoxDecoration(color:  Color.fromRGBO(111, 176, 255, 0.494),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Tuna salad sandwich \nProtein: 14g',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
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
            decoration: BoxDecoration(color:  Color.fromRGBO(111, 176, 255, 0.494),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Hummus veggie bowl \n Protein: 13g',
            style: TextStyle(
              color:  Color.fromRGBO(0, 10, 80, 1),
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