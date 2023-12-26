import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 64,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 24),
            child: SvgPicture.asset(
              'assets/icons/back_button.svg',
            ),
          ),
        ),
        title: Text(
          'Settings',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            title: Text(
              'Notifications',
              style: const TextStyle().copyWith(
                color: grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.15,
              child: FlutterSwitch(
                activeColor: orangeMain,
                inactiveColor: greyMid,
                activeText: '',
                inactiveText: '',
                value: status1,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status1 = val;
                  });
                },
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            title: Text(
              'Ask Before Buy',
              style: const TextStyle().copyWith(
                color: grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.15,
              child: FlutterSwitch(
                activeColor: orangeMain,
                inactiveColor: greyMid,
                activeText: '',
                inactiveText: '',
                value: status2,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status2 = val;
                  });
                },
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            title: Text(
              'Dark Mode',
              style: const TextStyle().copyWith(
                color: grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.15,
              child: FlutterSwitch(
                activeColor: orangeMain,
                inactiveColor: greyMid,
                activeText: '',
                inactiveText: '',
                value: status3,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status3 = val;
                  });
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
