import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Button extends StatelessWidget {
  final void Function() onTap;
  final String name;

  const Button({super.key, required this.onTap, required this.name});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 0.95, end: 1.0),
      builder: (context, scale, child) {
        return Transform.scale(scale: scale, child: child);
      },
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(180, 60),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          shadowColor: Colors.deepPurple[300],
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.deepPurple[400]!, width: 2),
          ),
          // Gradient would go here if using Container instead
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
               Icons.add_circle_outline_rounded,
              size: 28,
              color: Colors.white,
            ),
            const SizedBox(width: 12),
            Text(
              name,
              style: GoogleFonts.quando(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
