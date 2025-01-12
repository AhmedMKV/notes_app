import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, this.onPressed});

  final Icon icon;
final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF303030),
      ),
      child: Center(
        child: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
