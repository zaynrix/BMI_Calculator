import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modules/introductions/introductions.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String assetName = 'assets/images/logo.svg';

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => InroductionsScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body:   Center(
        child: Container(
                          // width: 250,
                          // height: 220,
                          child: SvgPicture.asset(  assetName,
  semanticsLabel: 'Acme Logo' ,cacheColorFilter:true,color: Colors.red,            matchTextDirection: true,
),),
      )
    );
  }
}
