

import 'package:flutter/material.dart';
import 'package:trabalho_02/ui/components/components.dart';


void calculaImc (BuildContext context,  pesotxt,  alturatxt) {
  double peso = double.tryParse(pesotxt.replaceAll(',', '.')) ?? 0;
  double altura = double.tryParse(alturatxt.replaceAll(',', '.')) ?? 0;

  double resultado = peso / (altura * altura);


  if (resultado < 18.6) {
    _mensagem(context,'Seu IMC está abaixo do peso ${resultado.toStringAsFixed(2)}');
  } else if (resultado >= 18.6 && resultado <= 24.9) {
    _mensagem(context,'Seu IMC está no peso ideal ${resultado.toStringAsFixed(2)}');
  } else if (resultado >= 24.9 && resultado <= 29.9) {
    _mensagem(context,'Seu IMC está levemente acima do peso ${resultado.toStringAsFixed(2)}');
  } else if (resultado >= 29.9&& resultado <= 34.9) {
    _mensagem(context,'Seu IMC está obesidade grau I ${resultado.toStringAsFixed(2)}');
  } else if (resultado >= 34.9 && resultado <= 39.9) {
    _mensagem(context,'Seu IMC está obesidade grau II ${resultado.toStringAsFixed(2)}');
  } else if (resultado >= 40) {
    _mensagem(context,'Seu IMC está obesidade grau III ${resultado.toStringAsFixed(2)}');
  } else {
    _mensagem(context, 'Campo Peso ou Altura vazio');
  }
}

void _mensagem(BuildContext context,String texto){
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









