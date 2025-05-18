import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;
  const Resposta(this.texto, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: onSelect,
        child: Text(
          texto,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
