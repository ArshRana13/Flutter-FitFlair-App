import 'package:fitflair/Screens/screen4.dart';
import 'package:fitflair/starborders/topRightstar.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget
{
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  late Image image1;
  late Image image2; 
  
  @override
   void initState() 
  {
    super.initState();
    image1 = Image.asset('assets/flat-hand-drawn-online-sport-classes_23-2148810197.avif');
    image2 = Image.asset('assets/runnn.avif');
  }
  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    super.didChangeDependencies();
  }
 
 final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
    
    return Scaffold(
      appBar: AppBar(toolbarOpacity: 1,),
      body: 
      Stack(
        children: [
          TopRightStar(),
          Container(
            child: 
            Center(
              child: Container(
                width: 200,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   TextField(
                    
                    controller: myController,
                decoration: const InputDecoration(hintText: 'What\'s your name?'),
              ),
              const SizedBox(height: 20,),
               const TextField(
                keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                  hintText: 'What\'s your age?'),
              ),
               const SizedBox(height: 20,),
               ElevatedButton(onPressed: (){
                String name = myController.text;
                if(name.isNotEmpty)
                {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                 Screen4(name)));
                }
               }
                , child: const Text('Submit')),
                
                ],
              ),),
            )
            ),
          
        ],
      ),
    );
  }
}