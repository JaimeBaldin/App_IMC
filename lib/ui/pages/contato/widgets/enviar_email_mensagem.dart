import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:trabalho_02/ui/components/components.dart';

void enviarEmailMensagem (BuildContext context, nome, mensagem) async {
  const usuario = "seu email";
  const senha = "senha";


  final smtpServer = gmail(usuario, senha);

  final mensagemEmail = Message()
    ..from = const Address(usuario, "Contato")
    ..recipients.add(usuario)
    ..subject = "Mensagem do App"
    ..text = 'Olá ${nome}, ${mensagem}';


 try {
  final sendReport = await send(mensagemEmail, smtpServer);
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Mensagem enviada', style: TextStyle(fontSize: 22),),
        actions: [
          BotaoQuadrado('OK', () {Navigator.pop(context);}),
        ],
      );
    }
  );
 } on MailerException catch (e) {
   print('Erro ao enviar.');
   for (var p in e.problems) {
     print('Erro: ${p.code}: ${p.msg}');
   }
 }
}