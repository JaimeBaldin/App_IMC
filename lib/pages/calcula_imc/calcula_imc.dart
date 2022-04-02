import 'package:flutter/material.dart';
import 'package:trabalho_02/components/components.dart';
import 'package:trabalho_02/pages/calcula_imc/widgets/fazer_calculo.dart';

class CalculaImc extends StatefulWidget {
  const CalculaImc({Key? key}) : super(key: key);

  @override
  _CalculaImcState createState() => _CalculaImcState();
}

class _CalculaImcState extends State<CalculaImc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('IMC'),
       centerTitle:true,
     ),
      body: ListView(
        children: [
          FazerCalculo(),
        ],
      ),
    );
  }




}


