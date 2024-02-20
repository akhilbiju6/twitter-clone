import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(height: 60,
                      child: Image.asset("assets/Account.png",fit: BoxFit.fill,)),
                    Text("Pixsellz",style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.bold
                    ),),
                    Text("@pixsellz",style: TextStyle(
                      fontSize: 16,color: Colors.grey
                    ),)
                  ],
                ),
              ),SizedBox(width: 150,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/Secondary account.png"),
                  ),
                  Image.asset("assets/Secondary account (1).png"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/Menu icon.png"),
                  ),
                ],
              ),
            ],
          ),
          ListTile(
            title: Image.asset(""),
          )

        ],
      ),
    );
  }
}