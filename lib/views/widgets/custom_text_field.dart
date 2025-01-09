import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  CustomTextFields(
      {required this.fieldPadding,
        this.onChanged,
      super.key,
      this.inputType,
      required this.hint,
      this.obscureText = false});

  bool? obscureText;
final EdgeInsetsGeometry fieldPadding;
  final String hint;
  Function(String)? onChanged;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding:fieldPadding,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white)),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.cyan),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
