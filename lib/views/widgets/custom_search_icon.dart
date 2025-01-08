import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF303030),
      ),

      child: Center(
        child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ),
    );
  }
}