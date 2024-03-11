import 'package:fitflair/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
class HomePage2 extends StatelessWidget {
  static const routeName  = '/home';
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    const pregnantWomenImage = 'assets/AI.avif';

    return Scaffold(
           appBar: AppBar(title: Text(''),),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(pregnantWomenImage),
              Card(
                child: Container(
                  decoration: const BoxDecoration(
                   color: Color.fromRGBO(252, 3, 194, 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 16.0, left: 16.0),
                            child: (
                              Text("Hi! I am Vivi, ask me anything", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)))
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
                            child: (
                              TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/chat');
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text("Ask Now",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    color:Color.fromRGBO(252, 3, 194, 0.4),
                                  ),)
                                )
                              )
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}