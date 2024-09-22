import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color background;
  final Color icontextColor;
  final String text;
  final IconData? icon;
  const Button({
    super.key,
    required this.background,
    required this.icontextColor,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: background,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: icontextColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: icontextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
