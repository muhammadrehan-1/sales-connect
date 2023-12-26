import 'package:flutter/material.dart';

import '../../colors.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, required this.howMuchRoundedCorners, required this.text});

  final double howMuchRoundedCorners;
  final String text;
  @override
  Widget build(BuildContext context) {
    return
    Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: ShapeDecoration(
        color: orangeMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(howMuchRoundedCorners),
        ),
      ),
      child:
      Text(
      text,
      style: const TextStyle().copyWith(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    );
  }
}
