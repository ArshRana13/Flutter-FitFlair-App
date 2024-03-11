import 'package:flutter/material.dart';

class Output extends StatelessWidget{
  const  Output(this.date,this.month,this.cycle,{super.key});
  final date;
  final month;
  final cycle;
  
  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/flat-design-menopause-illustration_23-2149375317.avif';
    String output = calculateDate(date, month, cycle);
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 20,),
          Image.asset(imageToUse),
          SizedBox(height: 20,),
          Container(
            height: 230,
            width:300,
            decoration: BoxDecoration(color: Color.fromRGBO(246, 182, 177, 1),
            borderRadius: BorderRadius.circular(50.00)
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Your period \nis on \n $output" , style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 34,
              color: Color.fromRGBO(100, 15, 9, 1)
            ),
            textAlign: TextAlign.center,),
          )
          ),
          SizedBox(height: 50),
          Container(
            height: 100,
            width: 300,
            child: MaterialButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text('Back to Period home screen',style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
            ),
            color: Color.fromRGBO(246, 182, 177, 0.8),
            ),
          )
        ],),
      ),
    );
  }
}

 String calculateDate(int date, int month, String c)
{
  int cycle  = int.parse(c);
  int outputDate = 0;
  int outputMonth = month;

  int daysToEndTheMonth = 0;

  if(month == 4 || month == 6 || month == 9 || month == 11)
  {
    if(date + cycle > 31)
    {
    daysToEndTheMonth = 30-date;
    cycle = cycle - (daysToEndTheMonth + 1);
    outputDate  = 1 + cycle;
    outputMonth = month + 1;
    }
    else
     outputDate = date + cycle;
  }
  else if(month == 2)
  {
     if(date + cycle > 28)
     {
    daysToEndTheMonth = 28-date;
    cycle = cycle - (daysToEndTheMonth + 1);
    outputDate  = 1 + cycle;
    outputMonth = month + 1;
     }
     else
     outputDate = date + cycle;
  }
  else
  {
     if(date + cycle > 30){
    daysToEndTheMonth = 31-date;
    cycle = cycle - (daysToEndTheMonth + 1);
    outputDate  = 1 + cycle;
    if(month != 12)
    outputMonth = month + 1;
    else
    outputMonth = 1;
     }
     else
     outputDate = date + cycle;
  }
  
  return "$outputDate / $outputMonth";

}