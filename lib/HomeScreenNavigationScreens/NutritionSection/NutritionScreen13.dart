import 'package:flutter/material.dart';
class NutritionScreen4 extends StatelessWidget{
  const NutritionScreen4({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/okokok.jpg';
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body:
      Column(children: [
        Center(
          child: Image.asset(
            imageToUse,
            height:350,
          ),
        ),
        Center(
          child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(135, 147, 114, 0.5),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Apple almond sandwich \n Protein: 15g',
            style: TextStyle(
              color:  Color.fromRGBO(0, 54, 11, 1),
              fontSize: 21,
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
            decoration: BoxDecoration(color: Color.fromRGBO(135, 147, 114, 0.5),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Tuna salad sandwich \nProtein: 14g',
            style: TextStyle(
              color:  Color.fromRGBO(0, 54, 11, 1),
              fontSize: 21,
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
            decoration: BoxDecoration(color: Color.fromRGBO(135, 147, 114, 0.5),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Hummus veggie bowl \n Protein: 13g',
            style: TextStyle(
              color:   Color.fromRGBO(0, 54, 11, 1),
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