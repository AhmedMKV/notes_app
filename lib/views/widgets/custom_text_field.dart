import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields(
      {this.maxLines = 1,
      super.key,
      this.inputType,
      required this.hint,
      this.obscureText = false,
      this.onSaved, this.onChanged});

  final bool? obscureText;

  final String hint;
  final void Function(String?)? onSaved;
  final TextInputType? inputType;
  final int maxLines;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      obscureText: obscureText!,
      keyboardType: inputType,
      onSaved: onSaved,
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
