import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textRobotoBold(double tamanho) {
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.bold,
  );
}

TextStyle textRoboto300(double tamanho) {
  return GoogleFonts.roboto(
    fontSize: tamanho,
    fontWeight: FontWeight.w300,
  );
}

Widget espacoHorizontal(double espaco) {
  return SizedBox(width: espaco);
}

Widget espacoVertical(double espaco) {
  return SizedBox(height: espaco);
}

TextStyle textNunito300(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w300,
  );
}

TextStyle textNunitoBold(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w700,
  );
}
