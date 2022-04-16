import 'package:flutter/material.dart';
import 'package:trabalho_02/ui/components/components.dart';
import 'package:trabalho_02/ui/pages/calcula_imc/widgets/enviar_email_imc.dart';
import 'package:trabalho_02/ui/pages/calcula_imc/widgets/fazer_calculo.dart';


class CalculaImc extends StatefulWidget {
  const CalculaImc({Key? key}) : super(key: key);

  @override
  _CalculaImcState createState() => _CalculaImcState();
}

class _CalculaImcState extends State<CalculaImc> {

  final _pesoController  = TextEditingController();
  final _alturaController = TextEditingController();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CampoDeTexto(_nomeController, "Digite seu nome",teclado: TextInputType.text),
          CampoDeTexto(_emailController, "Digite seu e-mail", teclado: TextInputType.emailAddress,),
          CampoDeTexto(_pesoController, 'Digite o seu peso'),
          CampoDeTexto(_alturaController, 'Digite a sua altura'),
          BotaoQuadrado('Resultado', (){
            calculaImc(context, _pesoController.text, _alturaController.text);
          }),
          BotaoQuadrado("Receber por E-mail", () {

          }),
        ],
      ),
    );
  }
}











