import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
 const  CustomTextFields({
    this.maxLines = 1,
    this.onChanged,
    super.key,
    this.inputType,
    required this.hint,
    this.obscureText = false});

 final bool? obscureText;

  final String hint;
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines:maxLines,

      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white)),
           hintText: hint,
        hintStyle: TextStyle(color: Colors.cyan),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.cyan)),
      ),
    );
  }
}
