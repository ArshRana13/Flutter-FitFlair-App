import 'package:flutter/material.dart';

class TopRightStar22 extends StatelessWidget{
  TopRightStar22({super.key});
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
          left: -150,
          bottom:-80,
          child: Container(
            decoration: const ShapeDecoration(
          color: Color.fromRGBO(238, 129, 129, 0.494),
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