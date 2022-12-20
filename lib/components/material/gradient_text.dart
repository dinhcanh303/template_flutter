import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
  });

  final String text;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient!.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: const TextStyle(
          // The color must be set to white for this to work
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
