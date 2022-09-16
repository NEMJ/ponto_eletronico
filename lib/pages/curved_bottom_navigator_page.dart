import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ponto_eletronico/pages/home_page.dart';
import 'package:ponto_eletronico/pages/scanner_qr_page.dart';
import 'package:ponto_eletronico/pages/settings_page.dart';

class CurvedBottomNavigatorPage extends StatefulWidget {
  const CurvedBottomNavigatorPage({ Key? key }) : super(key: key);

  @override
  State<CurvedBottomNavigatorPage> createState() => _CurvedBottomNavigatorPageState();
}


class _CurvedBottomNavigatorPageState extends State<CurvedBottomNavigatorPage> {
  String title = 'Curved Navigation Bar';
  int paginaAtual = 0;
  PageController pc = PageController(initialPage: 0);

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0bd792),
        title: Text(title),
      ),
      body: PageView(
        controller: pc,
        children: const [HomePage(), ScannerQrPage(), SettingsPage()],
        onPageChanged: setPaginaAtual,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: paginaAtual,
        height: 60.0,
        backgroundColor: Colors.white,
        color: const Color(0xFF0bd792),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          pc.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
        items: const [
          Icon(Icons.home),
          Icon(Icons.qr_code_2_sharp),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
