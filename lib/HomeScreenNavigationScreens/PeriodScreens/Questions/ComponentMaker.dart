import 'package:flutter/material.dart';

class ComponentMaker extends StatelessWidget
{
  ComponentMaker(this.content,{super.key});
  final content;

  @override
  Widget build(BuildContext context)
  {
    return  
          Column(
            children: [
              Center(
                child: Container(
                  height:70,
                  width:250,
                  decoration: BoxDecoration(color: Color.fromRGBO(50, 168, 82,0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("$content",textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(2, 47, 14, 0.752)
                ),)),
              )
              ),
              SizedBox(height: 30,)
            ],
          );
  }
}
