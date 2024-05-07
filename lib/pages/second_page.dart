import 'package:flutter/material.dart';
import 'package:navegacao/Mensagem.dart';
import 'package:navegacao/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)!.settings.arguments as Mensagem;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.descricao),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Voltar'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
