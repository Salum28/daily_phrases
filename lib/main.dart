import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Atributos
  final List<String> _phrases = [
    'Jesus ama você!',
    'Não se apoie no seu próprio entendimento, confie em Deus, pois Ele sabe mais do que você!',
    'Amar ao próximo se trata mais de ação do que de emoção!',
    'Tudo bem se você não está bem!',
    'Seja melhor do que você foi ontem, um pouco melhor por dia te fará alguém melhor a longo prazo',
    'Nunca desista daquilo que vale a pena lutar, você pode estar mais perto da vitória do que pensa',
    'Cada um é especial de um jeito único!',
    'Nunca subestime o próximo, ele pode te surpreender'
  ];
  var _generatedPhrase = 'Clique abaixo para gerar uma frase!';

  //Métodos
  void _generatePhrase() {
    int drawNumber = Random().nextInt(_phrases.length);
    setState(() {
      _generatedPhrase = _phrases[drawNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Text(
              _generatedPhrase,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            ElevatedButton(
                onPressed: _generatePhrase,
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green),
              ),
                child: const Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
