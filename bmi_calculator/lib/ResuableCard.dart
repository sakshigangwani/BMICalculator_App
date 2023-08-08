import 'package:flutter/material.dart';
class ResuableCard extends StatelessWidget {
  ResuableCard(this.colour, this.CardChild);
  final Color colour;
  final Widget CardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
