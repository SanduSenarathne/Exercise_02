import 'package:flutter/material.dart';

class CalculatorButton {
  //ElevatedButton
  static ButtonStyle get commonButtonStyle => ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, double.infinity),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 54, 80),
      );

  /*static TextStyle commonButtonTextStyle(Color colour) {
    return TextStyle(fontSize: 24, color: colour);
  }*/

  /*static TextStyle commonNumberButtonTextStyle() {
    return TextStyle(fontSize: 24, color: Colors.white);
  }

  static TextStyle commonFunctionButtonTextStyle() {
    return TextStyle(fontSize: 24, color: Color.fromARGB(255, 56, 171, 233));
  }

  static TextStyle commonClearButtonTextStyle() {
    return TextStyle(fontSize: 24, color: Colors.red);
  }*/
}

class ContainerStyles {
  static const TextStyle commonTextStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
