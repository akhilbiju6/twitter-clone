import 'package:flutter/material.dart';
import 'package:project_twitter/view/acoountscreen/accountscreen.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
    );
  }
}