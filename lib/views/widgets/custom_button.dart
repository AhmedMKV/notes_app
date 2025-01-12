import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.onTap,
      super.key,
      required this.buttonText,
      this.isLoading = false});

  final String buttonText;

  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(16)),
        height: 48,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
            color: Colors.black,
          )
              : Text(
                  buttonText,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
        ),
      ),
    );
  }
}
