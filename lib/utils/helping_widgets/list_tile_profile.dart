import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';

class ListTileProfile extends StatelessWidget {
  const ListTileProfile({super.key, required this.name, required this.icon});

  final String name;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        tileColor: greyLight,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(icon),
        ),
        title: Text(
          name,
          style: const TextStyle().copyWith(
            color: grey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            'assets/icons/right_arrow.svg',
          ),
        ),
      ),
    );
  }
}
