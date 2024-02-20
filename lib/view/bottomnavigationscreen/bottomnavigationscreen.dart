import "dart:ui";

import "package:flutter/material.dart";
import "package:project_twitter/utils/color_constant.dart";
import "package:project_twitter/view/homescreen/homescreen.dart";
import "package:project_twitter/view/mesasagescreen/messagescreen.dart";
import "package:project_twitter/view/notificationscreen/notificationscreen.dart";
import "package:project_twitter/view/trendsscren/trendsscreen.dart";

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
 int selectedindex=0;
 List<Widget>screens=[
  HomeScreen(),
  TrendScreen(),
  NOtificationScreen(),
  MessageSCreen()
 
 
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        selectedItemColor: ColorConstants.mycustomblue,
        type: BottomNavigationBarType.shifting,
          items: [
          BottomNavigationBarItem(icon: Image.asset("assets/Home Stroke Icon.png"),label: "" ),
          BottomNavigationBarItem(icon:Image.asset("assets/Search Stroke Icon.png"),label: "" ),
          BottomNavigationBarItem(icon:Image.asset("assets/Bell Stroke Icon.png"),label: "" ),
          BottomNavigationBarItem(icon:Image.asset("assets/Mail Stroke Icon.png"),label: "" ),
          ],
          onTap: (value) {
            selectedindex=value;
            

            setState(() {
              
            });
          },
          )

    );
  }
}

