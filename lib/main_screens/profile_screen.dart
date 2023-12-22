import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
        ),
        Stack(children: [
          Container(
            padding: const EdgeInsets.all(35),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
                  side: const BorderSide(
                    color: grey,
                  )
            ),),
            child: SvgPicture.asset('assets/icons/message_person.svg'),
          ),
          Positioned(
              left: 70,
              bottom: 1,
              child: SvgPicture.asset('assets/icons/edit_profile_image.svg')),
        ],),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
            contentPadding: const EdgeInsets.all(10),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            tileColor: greyLight,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SvgPicture.asset('assets/icons/user_icon_colored.svg'),
            ),
            title: Text(
              'My Account',
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
            contentPadding: const EdgeInsets.all(10),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            tileColor: greyLight,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SvgPicture.asset('assets/icons/log_out.svg'),
            ),
            title: Text(
              'Log Out',
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
        ),
      ],
    );
  }
}
