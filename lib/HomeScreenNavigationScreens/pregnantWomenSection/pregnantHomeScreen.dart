import 'package:fitflair/pedometer%20files/pregnant.dart';
import 'package:flutter/material.dart';

class PregnantHome extends StatelessWidget
{
  PregnantHome({super.key});

  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/ggg.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: Center(
        child: Column(children: [
          SizedBox(height: 20,),
          Image.asset(imageToUse),
          //SizedBox(height: 30,),
          Center(
            child: InkWell( 
              onTap: (){},
            child:Container(
            height:150,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(255, 185, 239, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            
            ),
            child: InkWell(
                 onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => PregnantPedometer()));
          },
              child: Center(child: Text('Walking',
            style: TextStyle(fontFamily: 'Roboto',
            fontSize: 24,
            color: Color.fromRGBO(120, 0, 92, 1)),
            textAlign: TextAlign.center,
            ),),
          ),
            )
            )
          ),
          SizedBox(height: 30,),
           Center(
            child: InkWell( 
              onTap: (){},
            child:Container(
            height:150,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(255, 185, 239, 0.298),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            
            ),
            child: Center(child: Text('Meditation',
            style: TextStyle(fontFamily: 'Roboto',
            fontSize: 24,
            color: Color.fromRGBO(120, 0, 92, 1)),
            textAlign: TextAlign.center,
            ),),
          ),
            )
          )
          
        ],
        ),
      ),
    );
  }
}