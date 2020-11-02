import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resetio/Screens/HomeScreen.dart';
import 'package:resetio/Screens/MoodsScreen.dart';
import 'package:resetio/Screens/MusicScreen.dart';
import 'package:resetio/Screens/ObjectiveScreen.dart';
import 'package:resetio/Screens/SettingsScreen.dart';
import 'package:resetio/Screens/SplashScreen.dart';
import 'package:resetio/Widgets/BottomNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/anxitey.png"), context);
    precacheImage(AssetImage("assets/images/finalanx.png"), context);
    precacheImage(AssetImage("assets/images/confidence.jpg"), context);
    precacheImage(AssetImage("assets/images/melidate.png"), context);
    precacheImage(AssetImage("assets/images/sunshine.png"), context);
    precacheImage(AssetImage("assets/images/sleep.png"), context);
    precacheImage(AssetImage("assets/images/rlief.png"), context);
    precacheImage(AssetImage("assets/images/innerpeace.png"), context);



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/BottomNavigation': (context)=>BottomNavBar(),
        '/MoodsScreen': (context)=>MoodsScreen(),
        '/ObjectiveScreen': (context)=>ObjectiveScreen(),
        '/HomeScreen': (context)=>HomeScreen(),
        '/MusicScreen': (context)=>MusicScreen(),
        '/SettingsScreen': (context)=>SettingsScreen(),



      },
    );
  }
}


