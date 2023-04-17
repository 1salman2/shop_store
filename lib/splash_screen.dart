import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';
// import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();


    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen())
      );});
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(
          //     // "assets/images/thumbnail.png",
          //   ),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Center(
          child:

          Image.asset(
            'assets/images/skylinx.png',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}