import 'package:flutter/material.dart';

class ThemeHelper {
  InputDecoration textInputDecoration(
      [String labelText = '', String hintText = '']) {
    return InputDecoration(
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.grey.shade400)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.red, width: 2.0)));
  }

  BoxDecoration bottonBoxDecoration(BuildContext context,
      [String color1 = '', String color2 = '']) {
    Color c1 = Theme.of(context).primaryColor;
    Color c2 = Theme.of(context).colorScheme.secondary;
    return BoxDecoration(
      boxShadow: const [
        BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
      ],
      gradient: LinearGradient(
          colors: [c1, c2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 1.0]),
      color: Colors.deepPurple.shade300,
      borderRadius: BorderRadius.circular(30),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        minimumSize: MaterialStateProperty.all(const Size(50, 50)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent));
  }
}

const Color primary = Color(0xFF92A3FD);
const Color secondary = Color(0xFF9DCEFF);
const Color thirdColor = Color(0xFFC58BF2);
const Color fourthColor = Color(0xFFEEA4CE);
const Color bgTextField = Color(0xFFF7F8F8);

const Color facebookColor = Color(0xFF3b5998);
const Color googleColor = Color(0xFFDB4437);
