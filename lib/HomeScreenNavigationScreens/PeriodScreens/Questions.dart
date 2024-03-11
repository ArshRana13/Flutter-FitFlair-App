import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions/Question1.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions/Question2.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions/Question3.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget
{
  Questions({super.key});
  final imageToUse = 'assets/people-thinking-make-decision-problem-solving-find-creative-ideas-flat-illustration_2175-3900.avif';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: Center(
        child: ListView(
          children: [
            Image.asset(imageToUse),
            SizedBox(height: 50,),
            InkWell(
              onTap:()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Question1()));
              },
              child: Center(
                child: Container(
                  height:200,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(61, 121, 233, 0.3),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Padding(
                    padding: EdgeInsets.all(30),
                    child:Text('Which foods should I eat during my periods?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: const Color.fromARGB(255, 6, 50, 86)
                  )
                  )
                  )
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
             InkWell(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Question2()));
              } ,
              child: Center(
                child: Container(
                  height:200,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 61, 61, 0.298),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Padding(
                    padding: EdgeInsets.all(30),
                    child:Text('Why do women have periods?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color.fromRGBO(69, 2, 2, 1),
                  )
                  )
                  )
                  ),
                ),
              ),
            ),
             SizedBox(height: 50,),
             InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Question3()));

              },
              child: Center(
                child: Container(
                  height:200,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 114, 50, 0.298),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Padding(
                    padding: EdgeInsets.all(30),
                    child:Text('Which period products are best for me?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color.fromRGBO(3, 58, 18, 1)
                  )
                  )
                  )
                  ),
                ),
              ),
            ),

            SizedBox(height: 50,)
            




          ],
        ),
      )
    );
  }
}