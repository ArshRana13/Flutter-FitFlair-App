import 'package:flutter/material.dart';

class TopLeftStar extends StatelessWidget{
  TopLeftStar({super.key});
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
          top:-80,
          child: Container(
            decoration: const ShapeDecoration(
          color:  Color.fromRGBO(134, 167, 252, 0.5),
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