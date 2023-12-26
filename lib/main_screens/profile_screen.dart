import 'package:connect_sales/main_screens/account_screen.dart';
import 'package:connect_sales/main_screens/help_center_screen.dart';
import 'package:connect_sales/main_screens/settings_screen.dart';
import 'package:connect_sales/utils/helping_widgets/list_tile_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'notifications_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
            width: MediaQuery.of(context).size.width,
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(35),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: CircleBorder(
                        side: BorderSide(
                      color: Color(0xff979797),
                    ))),
                child: SvgPicture.asset('assets/icons/message_person.svg'),
              ),
              Positioned(
                  left: 70,
                  bottom: 1,
                  child:
                      SvgPicture.asset('assets/icons/edit_profile_image.svg')),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
            width: MediaQuery.of(context).size.width,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AccountScreen();
                  },
                ),
              );
            },
            child: const ListTileProfile(
                name: 'My Account', icon: 'assets/icons/user_icon_colored.svg'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationsScreen();
                  },
                ),
              );
            },
            child: const ListTileProfile(
                name: 'Notifications',
                icon: 'assets/icons/notification_colored.svg'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SettingsScreen();
                  },
                ),
              );
            },
            child: const ListTileProfile(
                name: 'Settings', icon: 'assets/icons/setting_colored.svg'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HelpCenterScreen();
                  },
                ),
              );
            },
            child: const ListTileProfile(
                name: 'Help Center',
                icon: 'assets/icons/question_mark_colored.svg'),
          ),
          const ListTileProfile(
              name: 'Log Out', icon: 'assets/icons/log_out.svg'),
        ],
      ),
    );
  }
}
