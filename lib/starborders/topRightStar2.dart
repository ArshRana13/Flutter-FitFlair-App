import 'package:flutter/material.dart';

class TopRightStar2 extends StatelessWidget{
  TopRightStar2({super.key});
  @override
  Widget build(context)
  {
    return Scaffold(
      body: Container(
      child: Stack(
        children: [
        Positioned(
          height:300,
          width: 350,
          right: -150,
          bottom:-80,
          child: Container(
            decoration: const ShapeDecoration(
          color: Color.fromRGBO(236, 238, 129, 0.5),
          shape: StarBorder(
            points:6.00,
            rotation:60,
            innerRadiusRatio: 0.46,
            pointRounding: 0.74,
            valleyRounding: 0.08,
            squash: 0.00
          )
          ),
          ),
        )
      ],),
      ),
    );
  }
}