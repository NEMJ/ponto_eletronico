import 'package:flutter/material.dart';
import 'package:ponto_eletronico/pages/home_page.dart';
import 'package:ponto_eletronico/pages/scanner_qr_page.dart';
import 'package:ponto_eletronico/pages/settings_page.dart';

class DrawerNavigatorPage extends StatefulWidget {
  const DrawerNavigatorPage({ Key? key }) : super(key: key);

  @override
  State<DrawerNavigatorPage> createState() => _DrawerNavigatorPageState();
}

class _DrawerNavigatorPageState extends State<DrawerNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0bd792),
        title: const Text("Drawer Navigator Page"),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF88e4c5),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(child: Text("DRAWER")),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.qr_code_scanner),
                title: Text("Scanner QR Code"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScannerQrPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}