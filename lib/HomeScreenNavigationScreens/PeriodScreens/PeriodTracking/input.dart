import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/PeriodTracking/output.dart';
import 'package:flutter/material.dart';
class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<Input> {

  DateTime _dateTime = DateTime.now();

  void _showDatePicker()
  {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
       firstDate: DateTime(2023),
        lastDate: DateTime(2025)
        ).then((value) {
          setState(() {
            _dateTime = value!;
          });
        });
  }
  final imageToUse = 'assets/girl-with-menstrual-pain-menstrual-calendar-womens-health-zero-waste-menstruation-concept_751912-314.avif';
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    int day = _dateTime.day;
    int month = _dateTime.month;
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: ListView(children: [
        SizedBox(height: 30,),
        Image.asset(imageToUse),

          Center(
            child: Container(
              padding: EdgeInsets.all(20),
            height: 350,
            width: 300,
            decoration: BoxDecoration(color: Color.fromRGBO(243, 75, 67, 0.2),
            borderRadius: BorderRadius.all(Radius.circular(35.0))
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('What was the last date of your previous period?',
                style:TextStyle( fontSize: 22 , fontWeight: FontWeight.w400 , fontFamily: 'Roboto'),
                textAlign: TextAlign.center,),
                SizedBox(height: 30,),
                Text("Chosen Day : $day / $month",
                style: TextStyle(fontFamily: 'Roboto', fontSize: 20),),
                SizedBox(height: 40,),
                MaterialButton(onPressed: _showDatePicker,
                child: Padding(
                  padding: EdgeInsets.all(14.00),
                  child:Text("Choose a date", 
                style: TextStyle(fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(226, 255, 255, 255),
                fontSize: 18
                ),
                ),
                ),
                color:Color.fromRGBO(243, 75, 67, 0.402),
                )
              ],
            ),
                    ),
          ),

          SizedBox(height: 45,),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
            height: 250,
            width: 300,
            decoration: BoxDecoration(color: Color.fromRGBO(54, 244, 143, 0.2),
            borderRadius: BorderRadius.all(Radius.circular(35.0))
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('What is the time period between your menstrual cycles?',
                style:TextStyle( fontSize: 22 , fontWeight: FontWeight.w400 , fontFamily: 'Roboto'),
                textAlign: TextAlign.center,),
              TextField(controller: myController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter here'),
              )
              ],
            ),
                    ),
          ),
          SizedBox(height: 50,),

          Center(
            child: Container(
              padding: EdgeInsets.all(20),
            height: 200,
            width: 300,
            decoration: BoxDecoration(color: Color.fromRGBO(222, 244, 54, 0.2),
            borderRadius: BorderRadius.all(Radius.circular(35.0))
            ),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: (){
                if(myController.text != "")
                {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Output(_dateTime.day.toInt(), _dateTime.month.toInt(), myController.text)));
                }
                else{
                  
                }
          },
           child: Padding(padding: EdgeInsets.all(20),
           child : Text('Track your period',
           style: TextStyle(fontFamily: 'Roboto',
           fontSize: 20,
           )
           ))
           )
           ),
          ),

       SizedBox(height: 50,)
      ]),
    );
      
  }
}



//  MaterialButton(
//             onPressed: _showDatePicker,
//             child: const Padding(
//               padding:  EdgeInsets.all(20.0),
//             child: Text('Choose Date', style: TextStyle(
//               color:Colors.white,
//               fontSize: 25
//               )
//             )
//             ),
//             color: Colors.blue,
//             ),
//             MaterialButton(onPressed: (){
//               Navigator.push(context,
//               MaterialPageRoute(builder: (context)=> Output( _dateTime.day, _dateTime.month,23)
//               )
//               );

//Color.fromARGB(77, 54, 244, 143)


// onPressed: (){
//             Navigator.push(context, 
//             MaterialPageRoute(builder: (context) => Output(_dateTime.day.toInt(), _dateTime.month.toInt(), myController.text)));
//           },