import 'package:flutter/material.dart';

class Question3 extends StatelessWidget{
  Question3({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: Center(
        child: ListView(children: [
          Image.asset('assets/female-reproductive-system-concept_23-2148656502.avif'),
          Column(
            children: [
              Text("How do I decide What to use?",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 105, 6, 39)),
              ),
              Center(
                child: Container(
                  child: Padding(padding: EdgeInsets.all(30),
                  child:Text(
                    'Choosing a type of period protection is up to you. Some girls like tampons because they are easy to store in a purse or pocket. Tampons and cups are also helpful for girls who do sports like swimming, since you can not wear a pad in the water.Some girls prefer pads because they are easy to use and it is easier to remember when to change them because you can see them getting soaked with blood. And some girls with heavy periods use tampons together with pads or pantiliners for added protection against leaking. \n'+
                    "Most girls swicth back and forth depending on: \n\n1. their situation \n2. where they are going to \n3.their menstrual flow \n4. time of the day",
                    style: TextStyle(fontFamily: 'Roboto',fontSize: 18),
                    textAlign: TextAlign.center,
                    ),
                ),
              )
              )
            ],
          )
        ],),
      )
    );
  }
}