import 'package:fitflair/starborders/bottomRigthstar.dart';
import 'package:flutter/material.dart';
import 'package:fitflair/Screens/screen3.dart';
class Screen2 extends StatefulWidget{
  const Screen2 ({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  late Image image1;
  late Image image2;
 
  void initState()
  {
    super.initState();
        image1 = Image.asset('assets/pregnant3.avif');
        image2 = Image.asset('assets/nutrition.avif');
  }
  @override
  void didChangeDependencies() async {
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    super.didChangeDependencies();
  }
  @override
  Widget build(context)
  {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: InkWell(
        onTap:
         (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Screen3()));
            },
        child: Stack(
          children: [
        BottomRightStar(),
        const Positioned(
        left: 115,
        right:100,
        top: 200,
        child: Center(
          child: Column(
            children: [
              Text(
            'Hi, tell us a bit about yourself!',
            style: TextStyle(
              color: Color.fromRGBO(153, 188, 133, 1),
              fontSize: 32,
              fontFamily: 'Secular one',
              fontWeight: FontWeight.w700,
              
            ),
          ),
          SizedBox(height: 100,),
          Text(
            'Click anywhere',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(153, 188, 133, 1),
              fontSize: 22,
              fontFamily: 'Secular one',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          )
            ],
          )
        ),
      ),
        ]),
        
      ),
    );
  }
}