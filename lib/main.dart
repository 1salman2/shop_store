import 'package:flutter/material.dart';
import 'package:shop_store/splash_screen.dart';

import 'home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using a Future.delayed to hold the splash screen for 30 seconds.
    Future.delayed(Duration(seconds: 30), () {
      // Once the 30 seconds are up, navigate to the home screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });

    // Splash screen widget.
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CARPOOL',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        backgroundColor: Colors.white,
      ),
      initialRoute: "first",
      routes: {
        'first':(context)=>const SplashScreen(),
      },
    );
  }
}
