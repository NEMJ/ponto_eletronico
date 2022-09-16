import 'package:flutter/material.dart';

class ScannerQrPage extends StatelessWidget {
  const ScannerQrPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.redAccent,
      body: Center(
        child: Text("Scanner QR Page", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}