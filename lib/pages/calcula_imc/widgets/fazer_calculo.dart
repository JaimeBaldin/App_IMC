import 'package:flutter/material.dart';
import 'package:trabalho_02/components/components.dart';

class FazerCalculo extends StatefulWidget {
  const FazerCalculo({Key? key}) : super(key: key);

  @override
  _FazerCalculoState createState() => _FazerCalculoState();
}
class _FazerCalculoState extends State<FazerCalculo> {
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CampoDeTexto(_pesoController, 'Digite o seu peso'),
          CampoDeTexto(_alturaController, 'Digite a sua altura'),
          BotaoQuadrado('Resultado', calculaImc)
        ],
      ),
    );
  }
  void calculaImc () {
    double peso = double.tryParse(_pesoController.text.replaceAll(',', '.')) ?? 0;
    double altura = double.tryParse(_alturaController.text.replaceAll(',', '.')) ?? 0;

    double resultado = (altura * altura) / peso;

    if (resultado < 18.6) {
      _mensagem('Seu IMC está abaixo do peso $resultado');
    } else if (resultado >= 18.6 && resultado <= 24.9) {
      _mensagem('Seu IMC está no peso ideal $resultado');
    } else if (resultado >= 24.9 && resultado <= 29.9) {
      _mensagem('Seu IMC está levemente acima do peso $resultado');
    } else if (resultado >= 29.9&& resultado <= 34.9) {
      _mensagem('Seu IMC está obesidade grau I $resultado');
    } else if (resultado >= 34.9 && resultado <= 39.9) {
      _mensagem('Seu IMC está obesidade grau II $resultado');
    } else if (resultado >= 40) {
      _mensagem('Seu IMC está obesidade grau III $resultado');
    }
  }

  void _mensagem(String texto){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Resultado', style: TextStyle(fontSize: 22),),
            content: Text(texto, style: const TextStyle(fontSize: 20),),
            actions: [
              BotaoQuadrado('OK', () { Navigator.pop(context); }),
            ],
          );
        }
    );
  }

}

