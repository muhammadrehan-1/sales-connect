import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../colors.dart';

class ListTileMessages extends StatelessWidget {
  const ListTileMessages({super.key, required this.name, required this.image, required this.isSeen, required this.lastMessage, required this.time});

  final String name;
  final String image;
  final bool isSeen;
  final String lastMessage;
  final String time;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 30, right: 30),
      leading: Container(
        padding: const EdgeInsets.all(12),
        height: 60,
        width: 60,
        decoration:ShapeDecoration(
          color: greyLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: SvgPicture.asset(image),
      ),
      title:
      Text(
      name,
      style:const  TextStyle().copyWith(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
      subtitle: Text(
        lastMessage,
        style: const TextStyle().copyWith(
          color: grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle().copyWith(
              color: grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
         isSeen == false ? Container(
            alignment: Alignment.center,
            width: 24,
            height: 24,
            decoration: ShapeDecoration(
              color: backgroundOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              '3',
              style: const TextStyle().copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ) : const SizedBox(
           height: 24,
           width: 24,
         ),
        ],
      ),
    );
  }
}
