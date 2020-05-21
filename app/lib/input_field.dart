import 'package:flutter/material.dart';
import 'package:login_page_ui_challenge/main.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  
  const InputField({
    Key key,
    this.hint,
    this.obscure
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: secondaryColour),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: secondaryColour)),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: secondaryColour)),
      ),
    );
  }
}