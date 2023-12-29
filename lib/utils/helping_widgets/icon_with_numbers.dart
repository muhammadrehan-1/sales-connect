import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.dart';
import '../../main_screens/cart_screen.dart';
import '../../main_screens/notifications_screen.dart';

class IconsWithNumbers extends StatelessWidget {
  const IconsWithNumbers({super.key, required this.iconNumber, required this.image, required this.isNotificationScreen});

  final int iconNumber;
  final String image;
  final bool isNotificationScreen;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return isNotificationScreen? const NotificationsScreen(): const CartScreen();
            }));
          },
          child: SizedBox(
            height: 46,
            width: 46,
            child:
            SvgPicture.asset(image),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: CircleAvatar(
            radius: 7,
            backgroundColor: backgroundOrange,
            child: Text(
              '$iconNumber',
              style: const TextStyle().copyWith(
                color: Colors.white,
                fontSize: 9.14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
