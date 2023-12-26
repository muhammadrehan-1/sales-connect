import 'package:flutter/material.dart';

import '../../colors.dart';


class FaqTile extends StatelessWidget {
  const FaqTile({super.key, required this.title, required this.data});

  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      expandedAlignment: Alignment.topLeft,
      title: Text(
        title,
        style: const TextStyle().copyWith(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      children: [
        Text(
          data,
          style: const TextStyle().copyWith(
            color:grey ,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )

      ],
    );
  }
}
