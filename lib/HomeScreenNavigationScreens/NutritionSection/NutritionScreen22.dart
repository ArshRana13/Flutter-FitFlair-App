import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class NutritionScreen22 extends StatefulWidget
{
  const NutritionScreen22({super.key});

  @override
  State<NutritionScreen22> createState() => _NutritionScreen22State();
}

class _NutritionScreen22State extends State<NutritionScreen22> {
//   Future<void> loadImage(String imageUrl) async { 
//   try { 
//     // load network image example 
//     await precacheImage(NetworkImage(), context); 
//     // or 
//     // Load assets image example 
//     // await precacheImage(AssetImage(imagePath), context); 
//     print('Image loaded and cached successfully!'); 
//   } catch (e) { 
//     print('Failed to load and cache the image: $e'); 
//   } 
// }
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/nutritionist-concept-weight-loss-program-concept-healthy-food-meal-planning-balance-diet_647843-193.avif';
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
            decoration: BoxDecoration(color: Color.fromRGBO(116, 200, 209, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Fruit bowl \nCalories: 320',
            style: TextStyle(
              color:  Color.fromRGBO(1, 91, 101, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(116, 200, 209, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Porridge\nCalories: 300',
            style: TextStyle(
              color:  Color.fromRGBO(1, 91, 101, 1),
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
            decoration: BoxDecoration(color: Color.fromRGBO(116, 200, 209, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: const Center(child: Text('Quinoa salad\nCalories: 330',
            style: TextStyle(
              color:  Color.fromRGBO(1, 91, 101, 1),
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