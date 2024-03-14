import "package:bmiapp/reusable_card.dart";
import "package:bmiapp/variables.dart";
import "package:flutter/material.dart";

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({required this.label, required this.icon});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
