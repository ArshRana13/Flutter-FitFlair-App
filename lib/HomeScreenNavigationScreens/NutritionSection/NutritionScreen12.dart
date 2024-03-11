import 'package:flutter/material.dart';
class NutritionScreen3 extends StatelessWidget
{
  const NutritionScreen3({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/pregnant-woman_681458-250.avif';
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
            decoration: BoxDecoration(color: Color.fromRGBO(252, 133, 176, 0.498),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Porridge and fruit bowl \n Protein: 10g',
            style: TextStyle(
              color:  Color.fromRGBO(135, 8, 54, 1),
              fontSize: 21,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
            ),
          ),
        ),
        SizedBox(height: 20,),
         Center(
           child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(252, 133, 176, 0.498),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Yoghurt and toppings \n Protein: 8g',
            style: TextStyle(
              color:  Color.fromRGBO(135, 8, 54, 1),
              fontSize: 21,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500
            )
            ,)
            ),
                   ),
         ),
        SizedBox(height: 20,),
         Center(
           child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(252, 133, 176, 0.498),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Spinach cheese egg \n Protein: 13g',
            style: TextStyle(
              color:  Color.fromRGBO(135, 8, 54, 1),
              fontSize: 21,
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