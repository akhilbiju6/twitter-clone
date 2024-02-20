import 'package:flutter/material.dart';
import 'package:project_twitter/utils/twitter_db.dart';

class NotifSCreenAllWidget extends StatefulWidget {
  const NotifSCreenAllWidget({super.key});

  @override
  State<NotifSCreenAllWidget> createState() => _NotifSCreenAllWidgetState();
}

class _NotifSCreenAllWidgetState extends State<NotifSCreenAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ListView.separated(
        shrinkWrap: true,
      
        itemBuilder: (context, index) =>
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Star Solid Icon.png"),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(radius: 22,
                backgroundImage: AssetImage(Twitterdb.homedata[index]["image"]!),),
              ),
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children:[
          Text("In case you missed"),
           Text(Twitterdb.homedata[index]["name"]!,style: TextStyle(
             fontSize: 15,fontWeight: FontWeight.bold
           ),),
           Text("'s tweet")
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: 250,
                                    child: Text(Twitterdb.homedata[index]["quote"]!,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontStyle: FontStyle.normal)
                                    ),),
                ),      
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Twitterdb.homedata[index]["name"]!,style: TextStyle(
             fontSize: 15,fontWeight: FontWeight.bold
           ),),
           Text("@gmail.com/1999")
              ],
            )
            ],
      ),
       separatorBuilder: (context, index) => 
       SizedBox(
        height: 30,
       )
       , itemCount: Twitterdb.homedata.length),
    );
  }
}