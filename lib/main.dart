import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _prhases = [
    "Acredite no seu potencial.",
    "Você é capaz de ir além.",
    "Nunca é tarde para recomeçar.",
    "O sucesso é construído um passo de cada vez.",
    "Desafios são oportunidades disfarçadas.",
    "Persistência supera talento.",
    "Você é mais forte do que pensa.",
    "Grandes jornadas começam com o primeiro passo.",
    "Seja a sua melhor versão.",
    "Sonhar grande dá o mesmo trabalho que sonhar pequeno.",
    "A ação é o antídoto contra o medo.",
    "Faça hoje o que vai te orgulhar amanhã.",
    "Concentre-se no progresso, não na perfeição.",
    "Erros são lições, não fracassos.",
    "Coragem é seguir em frente mesmo com medo.",
    "Você cria o seu próprio caminho.",
    "O impossível é só questão de opinião.",
    "Tenha metas claras e atitudes firmes.",
    "Transforme obstáculos em degraus.",
    "Sucesso é a soma de pequenos esforços diários.",
    "Acredite. Lute. Conquiste.",
    "Nada muda se você não mudar.",
    "Você é o autor da sua história.",
    "Não espere oportunidades, crie-as.",
    "O fracasso é parte do caminho até o sucesso.",
    "Mude os pensamentos e mudará o mundo.",
    "A disciplina vence a motivação.",
    "Foco, força e fé.",
    "Não desista, a vitória pode estar perto.",
    "Seja consistente, não perfeito.",
    "Você pode mais do que imagina.",
    "A única limitação é aquela que você aceita.",
    "Levante. Respire. Tente de novo.",
    "Invista em você mesmo.",
    "Não há crescimento sem esforço.",
    "A chave do sucesso é a determinação.",
    "Seja grato pelo que tem enquanto luta pelo que quer.",
    "Os melhores dias ainda estão por vir.",
    "Você é responsável pela energia que traz ao mundo.",
    "Não pare até se orgulhar.",
    "O que você faz hoje molda seu amanhã.",
    "Não se compare, evolua.",
    "Seja movido pelo propósito, não pela pressão.",
    "A vitória pertence aos perseverantes.",
    "Vença um dia de cada vez.",
    "Motivação te inicia, hábito te mantém.",
    "Pense grande, comece pequeno, aja agora.",
    "Você tem tudo que precisa dentro de si.",
    "O agora é o melhor momento para começar.",
    "Mantenha o foco e siga em frente.",
  ];
  String _currentPhrase = "Clique abaixo para gerar uma frase !";

  void _generatePhrase() {
    setState(() {
      var newIndex = Random().nextInt(_prhases.length);
      _currentPhrase = _prhases[newIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Text(
                _currentPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                onPressed: _generatePhrase,
                style: ElevatedButton.styleFrom(
                  elevation: 16,
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  "Nova Frase",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
