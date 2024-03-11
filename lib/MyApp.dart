import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreenHomeScreen.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen21.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen12.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen15.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen13.dart';
import 'package:fitflair/HomeScreenNavigationScreens/NutritionSection/NutritionScreen14.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/PeriodHomeScreen.dart';
import 'package:fitflair/HomeScreenNavigationScreens/PeriodScreens/Questions.dart';

import 'package:fitflair/Screens/homeScreen.dart';
import 'package:fitflair/Screens/loadingScreen.dart';
import 'package:fitflair/Screens/screen2.dart';
import 'package:fitflair/Screens/screen3.dart';
import 'package:fitflair/Screens/screen4.dart';
import 'package:fitflair/ui/chat.dart';
import 'package:fitflair/ui/home.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Bot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      initialRoute: HomePage2.routeName,
      routes: {
        HomePage2.routeName: (context) => const HomePage2(),
        ChatPage.routeName: (context) => const ChatPage(),
      },
    );
  }
}