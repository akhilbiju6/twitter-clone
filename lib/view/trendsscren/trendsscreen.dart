// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project_twitter/utils/color_constant.dart';

class TrendScreen extends StatefulWidget {
  const TrendScreen({super.key});

  @override
  State<TrendScreen> createState() => _TrendScreenState();
}

class _TrendScreenState extends State<TrendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        leading: Image.asset("assets/Account.png"),
        title: Container(
          width: 300,
          height: 30,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search,size: 15,color: ColorConstants.mycustommoderateblack,),
              SizedBox(width: 10,),
              Text("Search Twiitter",
              style: TextStyle(
                color: ColorConstants.mycustommoderateblack,
                fontSize: 15
              ),)
            ],
          ),
          decoration: BoxDecoration(
            color: ColorConstants.mycustommoderategrey,
            borderRadius: BorderRadius.circular(15)
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Setiings Stroke Icon.png"),
        )],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Trends for you",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
          SizedBox(height: 40,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No new trends for you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 280,
                  child: Text("Its seems like theres not a lot to show you right now,but you can see trends for other areas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstants.mycustommoderateblack,
                    fontSize: 12
                  ),),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 130,
              child: Center(
                child: Text("change location",style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:ColorConstants.mycustomblue 
              ),
            ),
          )
          
        ],
      ),
    );
  }
}