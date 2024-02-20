import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_twitter/utils/color_constant.dart';
import 'package:project_twitter/view/bottomnavigationscreen/bottomnavigationscreen.dart';

import 'package:project_twitter/view/homescreen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
  
    Future.delayed(const Duration(seconds: 5),() {
      
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder:(context) => BottomNavigationScreen(), ));
    });
   
    
  
  
  
  @override
  void dispose() {
    
    super.dispose();
  }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustomblue,
      body:
      Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,width: 80,
            child: Image.asset("assets/Icon.png")),
        ],
      )),
      
    );
  }
}