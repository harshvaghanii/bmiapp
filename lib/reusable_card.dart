import "package:flutter/material.dart";

@immutable
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  const ReusableCard({this.cardChild, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
