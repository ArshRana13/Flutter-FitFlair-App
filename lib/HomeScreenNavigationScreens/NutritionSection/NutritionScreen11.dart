import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen12.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen13.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen14.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen15.dart';
import 'package:fitflair/starborders/topRightStar2.dart';
import 'package:flutter/material.dart';
class NutritionScreen2 extends StatelessWidget{
  const NutritionScreen2({super.key});
  @override
  Widget build(BuildContext context)
  {
        //final Images = 'assets/young-woman-sitting-apple-concept-illustration-girl-who-loves-fruit_498654-382.avif';
        return  Scaffold(
          appBar: AppBar(title: Text(''),),
            body: Stack(
            children: [TopRightStar2(),
            Center(child: Column(children: [
              SizedBox(height: 120),
              InkWell(
                onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen3()));
          },
             child:Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(145, 208, 235, 0.498),
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
              MaterialPageRoute(builder: (context) => NutritionScreen4()));
          },
            child: Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(176, 240, 86, 0.498),
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
              MaterialPageRoute(builder: (context) => NutritionScreen5()));
          },
             child: Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(240, 189, 86, 0.5),
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
              MaterialPageRoute(builder: (context) => NutritionScreen6()));
          },
             child:Container(
         height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(228, 118, 243, 0.498),
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