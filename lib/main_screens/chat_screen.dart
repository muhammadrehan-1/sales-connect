import 'package:connect_sales/utils/helping_widgets/message_received.dart';
import 'package:connect_sales/utils/helping_widgets/message_sent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.name});

  final String name;

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
          name,
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(left: 10, right: 10),
            children:  const [
              MessageSent(
                  message: 'Hey, How are you?',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageSent(
                  message: 'Hey, How are you?',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageSent(
                  message: 'Hey, How are you?',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageSent(
                  message: 'Hey, How are you?',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageReceived(
                  name: 'Rehan',
                  message: 'Fine',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageReceived(
                  name: 'Rehan',
                  message: 'Fine',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
              MessageReceived(
                  name: 'Rehan',
                  message: 'Fine',
                  image: 'assets/icons/message_person.svg',
                  time: '8:10 am'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left:15, right: 15, bottom: 10, top: 10),
              child: TextFormField(

                cursorColor: orangeMain,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 25, top:10, bottom: 10),
                    child: SvgPicture.asset('assets/icons/send_colored.svg'),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 5, ),
                    child: SvgPicture.asset('assets/icons/add_image.svg'),
                  ),
                  hintText: 'Type a message',
                  hintStyle: const TextStyle().copyWith(
                    color: grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  fillColor: const Color(0xFFF9F9F9),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: orangeMain,
                      ),
                      borderRadius: BorderRadius.circular(37)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(37),
                    borderSide: const BorderSide(
                      color: orangeMain,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(37),
                    borderSide: const BorderSide(
                      color: orangeMain,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
