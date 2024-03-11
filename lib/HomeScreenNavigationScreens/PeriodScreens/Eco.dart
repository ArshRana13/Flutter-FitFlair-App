import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Eco extends StatelessWidget{
  Eco({super.key});

  @override
  Widget build(BuildContext context)
  {
    _lanchURL1() async{
      Uri _url = Uri.parse('https://www.amazon.in/biodegradable-pads/s?k=biodegradable+pads/');
      if( await launchUrl(_url))
      {
        await launchUrl(_url);
      } else {
        throw 'Could not launch $_url';
      }
    }
    _lanchURL2() async{
      Uri _url = Uri.parse('https://www.amazon.in/EcoCup-Menstrual-Cup-Eco-Friendly-Alternative/dp/B07WNJTXQN');
      if( await launchUrl(_url))
      {
        await launchUrl(_url);
      } else {
        throw 'Could not launch $_url';
      }
    }
    _lanchURL3() async{
      Uri _url = Uri.parse('https://www.amazon.in/Safe-Organic-Cotton-Tampons-Regular/dp/B07NJ4WXZR');
      if( await launchUrl(_url))
      {
        await launchUrl(_url);
      } else {
        throw 'Could not launch $_url';
      }
    }
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: 
         ListView(
          children: [
            Image.asset('assets/nature-concept-illustration_114360-4016.avif'),

            InkWell(
              onTap:_lanchURL1,
              child: Center(
                child: Container(
                  height: 150,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(84, 238, 182, 0.3),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text(
                    "Eco friendly pads",
                    style:TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight:FontWeight.w500,
                      fontSize: 22,
                      color: Color.fromRGBO(6, 90, 59, 1)
                    ), 
                  ),),
                ),
              ),
            ),
            SizedBox(height: 30,),

            InkWell(
              onTap:_lanchURL2,
              child: Center(
                child: Container(
                  height: 150,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(84, 238, 182, 0.3),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text(
                    "Eco friendly \nmenstrual cups",
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight:FontWeight.w500,
                      fontSize: 22,
                      color: Color.fromRGBO(6, 90, 59, 1)
                    ), 
                  ),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap:_lanchURL3,
              child: Center(
                child: Container(
                  height: 150,
                  width:300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(84, 238, 182, 0.3),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text(
                    "Eco friendly tampons",
                    style:TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight:FontWeight.w500,
                      fontSize: 22,
                      color: Color.fromRGBO(6, 90, 59, 1)
                    ), 
                  ),),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        
      ),
    );
  }
}