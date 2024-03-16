import "package:flutter/material.dart";

@immutable
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final Function? onPress;
  const ReusableCard({
    this.cardChild,
    this.onPress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress != null
          ? () {
              onPress!();
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
