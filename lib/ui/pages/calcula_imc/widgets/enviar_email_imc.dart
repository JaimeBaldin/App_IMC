import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

void enviarEmailImc (BuildContext context, nome, email, resultado ) async {
  const usuario = "seu email";
  const senha = "senha";


  final smtpServer = gmail(usuario, senha);

  final mensagemEmail = Message()
    ..from = const Address(usuario, "Contato")
    ..recipients.add(email)
    ..subject = "Resultado do seu IMC"
    ..text = """Nome: $nome, $email, $resultado """;

  await send(mensagemEmail, smtpServer);
}