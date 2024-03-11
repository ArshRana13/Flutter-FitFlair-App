import 'package:flutter/material.dart';
class NutritionScreen5 extends StatelessWidget{
  const NutritionScreen5({super.key});
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/main-food-groups-macronutrients-vector_1308-127634.avif';
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
         SizedBox(height: 10,),
        Center(
          child: Container(
           height: 100,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(191, 233, 118, 0.523),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Boiled egg \n Protein: 6g',
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
            decoration: BoxDecoration(color: Color.fromRGBO(191, 233, 118, 0.523),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Cottage cheese \n Protein: 18g',
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
            decoration: BoxDecoration(color:  Color.fromRGBO(191, 233, 118, 0.523),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text(' Orange \n Protein: 1.3g',
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