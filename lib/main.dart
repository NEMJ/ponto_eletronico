import 'package:flutter/material.dart';
import 'package:ponto_eletronico/pages/curved_bottom_navigator_page.dart';
import 'package:ponto_eletronico/pages/drawer_navigator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CurvedBottomNavigatorPage(),
      // home: DrawerNavigatorPage(),
    );
  }
}