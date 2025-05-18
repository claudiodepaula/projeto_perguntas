import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Center(
          child: Text(
            fraseResultado,
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: reiniciarApp,
          child: Text(
            'Reiniciar',
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        // Icon(Icons.replay),
      ],
    );
  }
}
