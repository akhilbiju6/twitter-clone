// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_twitter/utils/notifscreenallwidget.dart';
import 'package:project_twitter/utils/notifscreenmentionwidget.dart';
import 'package:project_twitter/view/acoountscreen/accountscreen.dart';


class NOtificationScreen extends StatefulWidget {
  const NOtificationScreen({super.key});

  @override
  State<NOtificationScreen> createState() => _NOtificationScreenState();
}

class _NOtificationScreenState extends State<NOtificationScreen> {
  int screenvalue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () => 
          Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),)),
            child: Image.asset("assets/Account.png")),
        ),
        title: Center(child:Text("Notifications",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),) ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Feature stroke icon.png"),
        )],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell( onTap: () {
                screenvalue=1;
                 setState(() {
                   
                 });
                },
                  child: Text("All",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),SizedBox(width: 150,),
                InkWell( onTap: () {
                  screenvalue=2;
                  setState(() {
                    
                  });
                },
                  child: Text("Mentions",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
              
              ],
            ),
          ),Expanded(child:screenvalue==0?NotifSCreenAllWidget():screenvalue==1? NotifSCreenAllWidget():NotifScreenMentionWidget())
         
        ],
      ),
     
     

      
    );
  }
}