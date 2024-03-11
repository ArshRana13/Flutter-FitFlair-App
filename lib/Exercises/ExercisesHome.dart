import 'package:fitflair/Exercises/Cardio/Exercise1.dart';
import 'package:fitflair/Exercises/Yoga/Yoga1.dart';
import 'package:flutter/material.dart';

class ExercisesHome extends StatefulWidget{
  ExercisesHome({super.key});

  @override
  State<ExercisesHome> createState() => _ExercisesHomeState();
}

class _ExercisesHomeState extends State<ExercisesHome> {
   late Image image1;
  // late Image image2;
  // late Image image3;
  void initState()
  {
    super.initState();
        // image1 = Image.asset('assets/ooo.avif');
        // image2 = Image.asset('assets/online-doctor-concept_23-2148521965.avif');
        // image3 = Image.asset('assets/water-concept-illustration_114360-8494.avif');
        loadImage('assets/ooo.avif');
  }
  // @override
  // // Future<void> didChangeDependencies() async {
  // //  await precacheImage(image1.image, context);
  // //   // precacheImage(image2.image, context);
  // //   // precacheImage(image3.image, context);
  // //   super.didChangeDependencies();
  // // }
Future<void> loadImage(String imageUrl) async { 
  late Image image1 = Image.asset(imageUrl);
  await precacheImage(image1.image, context);
}


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: ListView(
          children: [
            Image.asset('assets/ooo.avif'),
            Center(
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(33, 150, 243, 0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: InkWell(
                  onTap:(){ 
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> Exercise1('highknees')));
                  },
                  child: Center(
                  child: Text(
                    'Cardio',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:const Color.fromARGB(255, 0, 41, 73)
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              )
              ),
            ),

          SizedBox(height: 30,),
            InkWell(
            onTap:(){ 
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> Yoga1()));
                  },
            child:Center(
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(33, 150, 243, 0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    'Yoga',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:const Color.fromARGB(255, 0, 41, 73)
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
            )
            ),

            SizedBox(height: 30,),

              ],
        )
      ),
    );
  }
}