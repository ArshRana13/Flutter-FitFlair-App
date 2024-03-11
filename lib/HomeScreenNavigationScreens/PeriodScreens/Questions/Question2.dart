import 'package:flutter/material.dart';

class Question2 extends StatelessWidget{
  Question2({super.key});

  @override
  Widget build(BuildContext context)
  {
    final imageToUse = 'assets/PPP.avif';
    return Scaffold(
            appBar: AppBar(title: Text(''),),

      body: ListView(children: [
        Image.asset(imageToUse),
        Center(
          child: Container(
            width: 300,
            child: Padding(padding: EdgeInsets.all(10),
            child: Text(
            "Women have periods as part of their reproductive cycle, which is a crucial aspect of the female reproductive system. The menstrual cycle is a complex interplay of hormonal changes that occur each month in response to the preparation of the uterus for a potential pregnancy. The primary purpose of menstruation is to shed the uterine lining, known as the endometrium, in the absence of pregnancy. If fertilization does not occur, the body expels the unfertilized egg along with the thickened uterine lining through the vagina. This process, known as menstruation, typically occurs on a monthly basis and marks the beginning of a new menstrual cycle. While menstruation itself may be viewed as a biological necessity tied to reproduction, its presence or absence does not define a woman's worth or identity. It's essential to recognize and respect the diversity of experiences related to the menstrual cycle. In addition to its reproductive role, menstruation is a natural and complex physiological process with various hormonal and biological implications. The menstrual cycle is regulated by hormones such as estrogen and progesterone, which orchestrate the changes in the ovaries and uterus. The shedding of the uterine lining during menstruation ensures a healthy environment for a potential embryo in case of conception. Moreover, menstruation serves as an indicator of overall reproductive health, with irregularities potentially signaling underlying health concerns. While the biological function of menstruation is tied to reproduction, it's crucial to recognize that the menstrual experience varies among individuals and can be influenced by factors such as genetics, lifestyle, and overall health. Beyond its biological significance, societal attitudes towards menstruation have evolved, fostering discussions around menstrual hygiene, menstrual equity, and challenging menstrual stigma. Recognizing the multifaceted nature of menstruation allows for a more comprehensive understanding of its significance in women's lives.",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.normal
            ),
            textAlign: TextAlign.center,
            ),),
          ),
        )
      ])
    );
  }
}