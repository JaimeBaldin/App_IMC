import 'package:flutter/material.dart';
import 'package:trabalho_02/ui/components/campo_texto_mensagem.dart';
import 'package:trabalho_02/ui/components/components.dart';
import 'package:trabalho_02/ui/pages/contato/widgets/enviar_email_mensagem.dart';

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  _ContatoState createState() => _ContatoState();
}
  final _nomeController = TextEditingController();
  final _mensagem = TextEditingController();

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entre em Contato"),
      ),
      body: ListView(
        children: [
          CampoDeTexto(_nomeController, "Digite seu nome", teclado: TextInputType.text),
          CampoDeMensagem(_mensagem, "Digite a sua mensagem",teclado: TextInputType.text),
          BotaoQuadrado("Enviar",() {
            enviarEmailMensagem(context, _nomeController, _mensagem);
            setState(() {
              _mensagem.clear();
              _nomeController.clear();
            });
          }),
        ],
      ),
    );
  }
}
