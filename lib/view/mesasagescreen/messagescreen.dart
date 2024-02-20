// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_twitter/utils/color_constant.dart';
import 'package:project_twitter/utils/twitter_db.dart';
import 'package:project_twitter/view/acoountscreen/accountscreen.dart';

class MessageSCreen extends StatefulWidget {
  const MessageSCreen({super.key});

  @override
  State<MessageSCreen> createState() => _MessageSCreenState();
}

class _MessageSCreenState extends State<MessageSCreen> {
  int hours=Random().nextInt(12);
  int minutes=Random().nextInt(60);
  int days=Random().nextInt(30);
  int months=Random().nextInt(12);
  
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
        title: Center(child:Text("Messages",style: TextStyle(
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
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 30,
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text("Search for people and groups")
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.mycustommoderategrey
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.separated(
                itemCount: Twitterdb.homedata.length,
                itemBuilder:(context, index) => 
              ListTile(
                leading:CircleAvatar(radius: 30,
                  backgroundImage: AssetImage(Twitterdb.homedata[index]["image"]!),
                  ), 
                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Twitterdb.homedata[index]["name"]!,style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                            ),),
                         Text(Twitterdb.homedata[index]["quote"]!,maxLines: 2,
                         overflow: TextOverflow.clip,style: TextStyle(
                          fontSize: 12
                         ),) 
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text("$days/$months/2000",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 13
                      ),),
                      Text("$hours.$minutes pm")
                    ],
                  ),
                  
              ),separatorBuilder: (context, index) => SizedBox(height: 15,),
              
              
              ),
            ),
          )
        ],
      ),
    );
  }
}