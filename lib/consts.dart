import 'package:flutter/material.dart';

class MainColors {
  static const Color darkColor = Color(0xFF1A1D21);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color notesColor = Color(0xFFD6DEDE);
  static const Color c9c9c9 = Color.fromARGB(255, 161, 161, 161);
  static const Color whiteToneColor = Color(0xFFEFF2F1);
  static const Color redColor = Color(0xFFCC4F4F);
  static const Color folderColor = Color.fromARGB(255, 36, 42, 48);
  static const Color folderTopTextColor = Color(0xFF64696A);
}

class ConstFuns {
  showSnack(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
