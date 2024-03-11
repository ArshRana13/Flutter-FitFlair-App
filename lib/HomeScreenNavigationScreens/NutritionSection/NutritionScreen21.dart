import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen22.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen23.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen24.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen25.dart';
import 'package:fitflair/starborders/topRightStar22.dart';
import 'package:flutter/material.dart';
class NutritionScreen21 extends StatelessWidget{
  const NutritionScreen21({super.key});
  @override
  Widget build(BuildContext context)
  {
        //final Images = 'assets/young-woman-sitting-apple-concept-illustration-girl-who-loves-fruit_498654-382.avif';
        return Scaffold(
          appBar: AppBar(title: Text(''),),

            body: Stack(
            children: [TopRightStar22(),
            Center(child: Column(children: [
              SizedBox(height: 120),
              InkWell(
                onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen22()));
          },
             child:Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(176, 240, 86, 0.498),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Center(child: Text('Breakfast',
          style: TextStyle(
            color:  Color.fromRGBO(107, 36, 1, 1),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          )
          ,)
          ),
        )
              ),
                SizedBox(height: 60),
                InkWell(
           onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen23()));
          },
            child: Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color:Color.fromRGBO(145, 208, 235, 0.498),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Center(child: Text('Lunch',
          style: TextStyle(
            color: Color.fromRGBO(107, 36, 1, 1),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          )
          ,)
          ),
        )
                ),
         SizedBox(height: 60),
         InkWell(
          onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen24()));
          },
             child: Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: 
           Color.fromRGBO(228, 118, 243, 0.498),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Center(child: Text('Snacks',
          style: TextStyle(
            color: Color.fromRGBO(107, 36, 1, 1),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          )
          ,)
          ),
        )
         ),
         SizedBox(height: 60),
         InkWell(
           onTap: (){
              Navigator.push(context, 
             MaterialPageRoute(builder: (context) => NutritionScreen25()));
          },
             child:Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color:Color.fromRGBO(240, 189, 86, 0.5),
          borderRadius: BorderRadius.all(Radius.circular(15.0))), 
                  child: const Center(child: Text('Dinner',
          style: TextStyle(
            color: Color.fromRGBO(107, 36, 1, 1),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          )
          ,)
          ),
        )
         ),
        
            ],),)],
            ),
          )
        ;
  }
}