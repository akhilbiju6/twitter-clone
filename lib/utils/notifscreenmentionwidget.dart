// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_twitter/utils/color_constant.dart';
import 'package:project_twitter/utils/twitter_db.dart';

class NotifScreenMentionWidget extends StatefulWidget {
  const NotifScreenMentionWidget({super.key});

  @override
  State<NotifScreenMentionWidget> createState() => _NotifScreenMentionWidgetState();
}

class _NotifScreenMentionWidgetState extends State<NotifScreenMentionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: Twitterdb.homedata.length,
        itemBuilder: (context, index) => 
         Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 30,
                  backgroundImage: AssetImage(Twitterdb.homedata[index]["image"]!),
                  ),
                ),
                Text( Twitterdb.homedata[index]["name"]!)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 300,
                    child: Text(Twitterdb.homedata[index]["quote"]!,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      
                    ),
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 300,
                  child:
                  
                     Text("#BlackLivesMatter#COVID1#Election2024#ClimateChange#Bitcoin#Cryptocurrenc#TravelTuesda#ThrowbackThursday#MondayMotivation#FridayFeeling",
                  style: TextStyle(color: ColorConstants.mycustomblue)))
              ],
            ), Row(
              children: [
                Text(""),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Twitterdb.homedata[index]["image"]!),
                ],
              ),
            ),Row(mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(height: 20,width: 20,
                                  child: Image.asset("assets/Comment stroke icon.png")),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(height: 20,width: 20,
                                                               child: Image.asset("assets/Retweet stroke icon.png")),
                                 ),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 20,width: 20,
                              child: Image.asset("assets/Heart stroke icon.png")),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 20,width: 20,
                              child: Image.asset("assets/Share stroke icon.png")),
                          ),
                              ],),
            
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(height: 20,),
      ),
      
    );
      
      
     
         
            
  }
}
    
  
