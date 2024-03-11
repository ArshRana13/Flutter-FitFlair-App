import 'package:fitflair/starborders/topLeftstar.dart';
import 'package:flutter/material.dart';
import 'package:fitflair/Screens/screen2.dart';

class LoadingScreen extends StatefulWidget{
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
  late Image image11;
  late Image image12;
  late Image image13;
  late Image image14;
  late Image image15;
  late Image image16;
  late Image image17;
  late Image image18;
  late Image image19;
  late Image image20;
  late Image image21;
  late Image image22;
  late Image image23;
  late Image image24;
  late Image image25;
  late Image image26;
  late Image image27;
  late Image image28;



  void initState()
  {
    super.initState();
        image1 = Image.asset('assets/nutritionist-concept-weight-loss-program-concept-healthy-food-meal-planning-balance-diet_647843-193.avif');
        image2 = Image.asset('assets/carb-cycling-abstract-illustration_335657-5250.avif');
        image3 = Image.asset('assets/water-concept-illustration_114360-8494.avif');
        image4 = Image.asset('assets/healthy-food-concept-dish-with-fresh-fruits-vector-illustration_572614-147.avif');
        image5 = Image.asset('assets/healthy-food-concept-illustration_114360-13376.avif');
        image6 = Image.asset('assets/girl-with-menstrual-pain-menstrual-calendar-womens-health-zero-waste-menstruation-concept_751912-314.avif');
        image7 = Image.asset('assets/flat-design-menopause-illustration_23-2149375317.avif');
        image8 = Image.asset('assets/eating-dessert-concept-illustration_114360-16094.avif');
        image9 = Image.asset('assets/PPP.avif');
        image10 = Image.asset('assets/female-reproductive-system-concept_23-2148656502.avif');
        image11 = Image.asset('assets/nature-concept-illustration_114360-4016.avif');
        image12 = Image.asset('assets/female-reproductive-system-concept_52683-45670.avif');
        image13 = Image.asset('assets/young-woman-sitting-apple-concept-illustration-girl-who-loves-fruit_498654-382.avif');
        image14 = Image.asset('assets/people-thinking-make-decision-problem-solving-find-creative-ideas-flat-illustration_2175-3900.avif');
        image15 = Image.asset('assets/image.jpg');
        image16 = Image.asset('assets/AI.avif');
        image17 = Image.asset('assets/ooo.avif');
        image18 = Image.asset('assets/highKnees.avif');
        image19 = Image.asset('assets/uuu.avif');
        image20 = Image.asset('assets/lmao.jpg');
        image21 = Image.asset('assets/yoga2.avif');
        image22 = Image.asset('assets/yoga1.jpg');
        // image23 = Image.asset('');
        // image24 = Image.asset('');
        // image25 = Image.asset('');
        // image26 = Image.asset('');
        // image27 = Image.asset('');
        // image28 = Image.asset('');
       // image29 = Image.asset('');

  }
  @override
  void didChangeDependencies() async {
    await precacheImage(image1.image, context);
    await precacheImage(image2.image, context);
    await precacheImage(image3.image, context);
    await precacheImage(image4.image, context);
    await precacheImage(image5.image, context);
    await precacheImage(image6.image, context);
    await precacheImage(image7.image, context);
    await precacheImage(image8.image, context);
    await precacheImage(image9.image, context);
    await precacheImage(image10.image, context);
    await precacheImage(image11.image, context);
    await precacheImage(image12.image, context);
    await precacheImage(image13.image, context);
    await precacheImage(image14.image, context);
    await precacheImage(image15.image, context);
    await precacheImage(image16.image, context);
    await precacheImage(image17.image, context);
    await precacheImage(image18.image, context);
    await precacheImage(image19.image, context);
    await precacheImage(image20.image, context);
    await precacheImage(image21.image, context);
    await precacheImage(image22.image, context);


    super.didChangeDependencies();
  }
  @override
  Widget build(context)
  {
      const MaterialApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        //appBar: AppBar(title: Text('Loading Screen'),),
      body: InkWell(
        child: Stack(children: [
        TopLeftStar(),
        const Positioned(
        left: 115,
        right:100,
        top: 328,
        child: Text(
          'FitFlair',
          style: TextStyle(
            color: Color(0xFF3468C0),
            fontSize: 48,
            fontFamily: 'Merriweather Sans',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
        Positioned(
          width:300,
          height:80,
          top:700,
          left:35,
          child:
        ElevatedButton(onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => const Screen2()));
        },
         child: const Text(
          'Get started',
          style: TextStyle(
            color: Color(0xFF3468C0),
            fontSize: 24,
            fontFamily: 'Merriweather Sans',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        )
        )
        ]),
        
      ),
    )
    );
  }
}