

import 'package:flutter/material.dart';
import 'package:trabalho_02/ui/components/components.dart';
import 'package:trabalho_02/ui/pages/pages.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC APP"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: abrirContato,
              icon: const Icon(Icons.email)
          ),
        ],
      ),
      body: ListView(
        children: [
          BotaoQuadrado('Carlcular Imc', abrirCalculaImc),
        ],
      ),
    );
  }


  void abrirCalculaImc() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CalculaImc())
    );
  }

  void abrirContato() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Contato())
    );
  }
  
}


