import 'dart:math';

import 'package:flutter/material.dart';

import 'package:project_twitter/utils/color_constant.dart';
import 'package:project_twitter/utils/comment_db.dart';

import 'package:project_twitter/utils/twitter_db.dart';
import 'package:project_twitter/view/acoountscreen/accountscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () => 
          Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),)),
            child: Image.asset("assets/Account.png")),
        ),
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Twitter Logo.png"),
        )),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Feature stroke icon.png"),
        )],
      ),
        
      
         body: ListView.builder(
          itemCount: 10,
          
          
          itemBuilder: (context, index) => Column(
           children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [ Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(radius: 30,
                backgroundImage: AssetImage(Twitterdb.homedata[index]["image"]!),
                ),
              ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/Heart Solid Icon.png"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(Twitterdb.homedata[index]["name"]!,style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                          ),),
                        ),
                        Text(Twitterdb.homedata[index]["name"]!,style: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.bold
                        ),),
                        
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(width: 250,
                              child: Text(Twitterdb.homedata[index]["quote"]!,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontStyle: FontStyle.normal
                                
                              ),),
                              
                            ),Row(
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

                      ],
                    ),
                   
                  ],
                )

                
                  

              ],
            ),Row(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(radius: 20,
                backgroundImage: AssetImage(Twitterdb.homedata[index]["image"]!),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Show this thread",style: TextStyle(color: Color(0xff4C9EEB),
                fontSize: 14),),
              )
            ],

            ),SizedBox(height: 1,width: 200,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,backgroundImage: AssetImage(Twitterdb.homedata[Random().nextInt(10)]["image"]!),
                      ),
                    )
                  ],
                ),
                Container(width: 200,
                  child: Column(
                    children: [Text(Commentdb.comdata[index]["comment"]!),]),
                ),
                  
                  
                  
                
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            )  
           ],
         )
          

         ),
         floatingActionButton: FloatingActionButton(
          child: Image.asset("assets/Add text icon (1).png"),
          backgroundColor: Color(0xff4C9EEB),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            print("pressed");
           
         },),
         ),

      );
    
  }
}