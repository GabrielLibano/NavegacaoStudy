import 'package:flutter/material.dart';
import 'package:navegacao/Mensagem.dart';
import 'package:navegacao/pages/second_page.dart';
import '../Mensagem.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Navegar'),
        onPressed: () {
          Navigator.of(context).pushNamed('/second', arguments: Mensagem('Teste'));
        },
      )),
    );
  }
}
