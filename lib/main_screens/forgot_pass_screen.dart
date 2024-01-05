import 'package:connect_sales/main_screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../utils/helping_widgets/confirm_button.dart';
import '../utils/helping_widgets/textformfield.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        centerTitle: true,
        title: Text(
          'Forgot Password',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: greyMid,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.032,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                'Forgot Password',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                'Please enter your email and we will send\n you a link to return to your account',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
              ),
              const CustomTextFormField(
                  label: 'Email',
                  hint: 'Enter your email',
                  iconPath: 'assets/icons/mail.svg'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const OtpScreen();
                    },),);
                  },
                  child: const ConfirmButton(
                    howMuchRoundedCorners: 28.0,
                    text: 'Continue',
                  ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
