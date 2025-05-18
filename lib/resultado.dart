import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() reiniciarApp;
  const Resultado(this.pontuacao, this.reiniciarApp, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(fraseResultado, style: TextStyle(fontSize: 28))),
        TextButton(
          onPressed: reiniciarApp,
          child: Text(
            'Reiniciar',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
        // Icon(Icons.replay),
      ],
    );
  }
}
