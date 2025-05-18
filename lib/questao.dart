import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: GoogleFonts.poppins(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
