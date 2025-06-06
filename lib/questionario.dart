import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;
  const Questionario(
    @required this.perguntaSelecionada,
    @required this.perguntas,
    @required this.responder, {
    super.key,
  });
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? perguntas[perguntaSelecionada].cast()['resposta']
                as List<Map<String, Object>>
            : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map(
              (resp) => Resposta(
                resp['texto'] as String,
                () => responder(int.parse(resp['pontuacao'].toString())),
              ),
            )
            .toList(),
      ],
    );
  }
}
