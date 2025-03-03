import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.color,
    required this.borderRadius,
  });

  final String text;
  final Color color;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: borderRadius, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(5, 5),
          blurRadius: 20,
        ),
      ]),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
