import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}