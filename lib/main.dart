import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';
import './questao.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = [
    {
      'texto': 'Qual a sua cor favorita?',
      'resposta': [
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 8},
        {'texto': 'Azul', 'pontuacao': 4},
        {'texto': 'Roxo', 'pontuacao': 2},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 8},
        {'texto': 'Leão', 'pontuacao': 4},
        {'texto': 'Passarinho', 'pontuacao': 2},
      ],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'resposta': [
        {'texto': 'mari', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 8},
        {'texto': 'Leo', 'pontuacao': 4},
        {'texto': 'Pedro', 'pontuacao': 2},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarApp() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: const Text("Perguntas"))),
        body:
            temPerguntaSelecionada
                ? Questionario(_perguntaSelecionada, _perguntas, _responder)
                : Resultado(_pontuacaoTotal, _reiniciarApp),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
