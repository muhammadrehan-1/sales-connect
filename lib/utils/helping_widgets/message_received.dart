import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';

class MessageReceived extends StatelessWidget {
  const MessageReceived({super.key, required this.name, required this.message, required this.image, required this.time});

  final String name;
  final String message;
  final String image;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: 32,
            height: 32,
            decoration: ShapeDecoration(
              color: greyLight,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),),
            child: SvgPicture.asset(image),
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const ShapeDecoration(
                  color: orangeMain,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  message,
                  style: const TextStyle().copyWith(
                    color: Colors.white,
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
        ],
      ),
    );;
  }
}
