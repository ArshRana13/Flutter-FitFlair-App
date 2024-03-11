import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  Water({Key? key}) : super(key: key);

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  int water = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/water-concept-illustration_114360-8494.avif',
              height: 400,
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(33, 150, 243, 0.3),
                borderRadius: BorderRadius.all(Radius.circular(45.0)),
              ),
              child: Center(
                child: Text(
                  '$water/2,000 ml',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(0, 27, 50, 1)),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Container(
                height:50,
                width:120,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      water += 250;
                      print("$water");
                    });
                  },
                  child: Text('+ 250 ml'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
