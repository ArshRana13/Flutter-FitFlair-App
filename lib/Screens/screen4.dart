import 'package:fitflair/Screens/homeScreen.dart';
import 'package:fitflair/starborders/bottomLeftstar.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget{
   const Screen4 (this.name,{super.key});
  final  name;

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {

  late Image image1;
  late Image image2;
  late Image image3;
  late Image image4;
  late Image image5;
  late Image image6;
  late Image image7;
  late Image image8;
  late Image image9;
  late Image image10;

  void initState()
  {
    super.initState();
        image1 = Image.asset('assets/morning.avif');
        image2 = Image.asset('assets/online-doctor-concept_23-2148521965.avif');
        image3 = Image.asset('assets/water-concept-illustration_114360-8494.avif');
        image4 = Image.asset('assets/ccc.jpg');
        image5 = Image.asset('assets/image.jpg');
        image6 = Image.asset('assets/ggg.avif');
        image7 = Image.asset('assets/pregnant-woman_681458-250.avif');
        image8 = Image.asset('assets/okokok.jpg');
        image9 = Image.asset('assets/main-food-groups-macronutrients-vector_1308-127634.avif');
        image10 = Image.asset('assets/eating-korean-food-concept-illustration_114360-14618.jpg');
  }
  @override
  void didChangeDependencies() async {
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    precacheImage(image5.image, context);
    precacheImage(image6.image, context);
    precacheImage(image7.image, context);
    precacheImage(image8.image, context);
    precacheImage(image9.image, context);
    precacheImage(image10.image, context);
    super.didChangeDependencies();
  }
  @override
  Widget build(context)
  {
    return   Scaffold(
        appBar: AppBar(title: Text(''),),
        body: InkWell(
          onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HomeScreen(widget.name)));
          },
          child: Container(
          child: Stack(
            children: [
              BottomLeftStar(),
              Container(
                
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    SizedBox(height: 150,),
                    Center
                    (child: Text
                    ( 'Hi, ${widget.name} remember Body positivity champions self-love and embraces the beauty of all shapes and sizes.'
                    ,style: TextStyle(
                                color: Color(0xFFFFAD84),
                                fontSize: 28,
                                fontFamily: 'Merriweather Sans',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),                )
                    ),
                    SizedBox(height: 100,),
                     Center
                    (child: Text
                    ( 'Click anywhere'
                    ,style: TextStyle(
                                color: Color(0xFFFFAD84),
                                fontSize: 22,
                                fontFamily: 'Merriweather Sans',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),                )
                    ),
                  ],
                )
                )
            ],
          ),
        )),
      
    );
    // return Scaffold(
    //   body: Container(
    //     child: Stack(children: [
    //     BottomLeftStar(),
    //     const Positioned(
    //     left: 50,
    //     right:30,
    //     top: 250,
    //     height: 2000,
    //     child: Text(name),
    //   ),
    //     ]),
        
    //   ),
    // );
  }
}