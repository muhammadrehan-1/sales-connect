import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';


class MessageSent extends StatelessWidget {
  const MessageSent({super.key, required this.message, required this.image, required this.time});

  final String message;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const ShapeDecoration(
                  color: greyLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  message,
                  style: const TextStyle().copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                time,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Container(
            width: 32,
            height: 32,
            padding: EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: greyLight,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),),
            child: SvgPicture.asset(image),
          ),
        ],
      ),
    );
  }
}
