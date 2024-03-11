import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen11.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen21.dart';
import 'package:flutter/material.dart';
class NutritionScreen1 extends StatelessWidget{
  const NutritionScreen1({super.key});
  @override
  Widget build(BuildContext context)
  {
    final Images = 'assets/young-woman-sitting-apple-concept-illustration-girl-who-loves-fruit_498654-382.avif';
    return  Scaffold(
            appBar: AppBar(title: Text(''),),

            body: Column(children: [
              ClipRRect(
          borderRadius:BorderRadius.circular(100),
          child: Image.asset(
           Images,
            width: 400,
            height:400,
            fit: BoxFit.fitWidth
           ),
        ),
        SizedBox(height: 60),
        InkWell(
          onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen2()));
          },
          child: Container(
          height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(240, 189, 86, 0.5),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Center(child: Text('Pregnancy meal plan',
          style: TextStyle(
            color:  Color.fromRGBO(145, 97, 0, 1),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          ),)),
        )
        ),
        SizedBox(height: 60),
        InkWell(
           onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => NutritionScreen21()));
          },
        child: Container(
          height: 70,
          width:300,
          decoration: BoxDecoration(color: Color.fromRGBO(159, 222, 51, 0.498),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: const Center(child: Text('Weight loss meal plan',
          style: TextStyle(
            color:  Color.fromARGB(255, 0, 101, 10),
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
          ),)),
        )
        )
            ]),

          )
    ;
  }
}
//E9554A