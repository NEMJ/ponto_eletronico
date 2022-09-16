import 'package:flutter/material.dart';
import 'package:ponto_eletronico/pages/curved_bottom_navigator_page.dart';
import 'package:ponto_eletronico/pages/drawer_navigator_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings Page", style: TextStyle(fontSize: 20)),
            ElevatedButton(
              child: Text("Drawer"),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DrawerNavigatorPage()))
            ),
            ElevatedButton(
              child: Text("Bottom Navigator"),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => CurvedBottomNavigatorPage()))
            ),
          ],
        ),
      ),
    );
  }
}