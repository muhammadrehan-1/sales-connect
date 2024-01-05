import 'package:connect_sales/main_screens/confirm_pass_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../colors.dart';
import '../utils/helping_widgets/confirm_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
          'OTP Verification',
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
                'OTP Verification',
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
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'We sent your code to +92***334\nThis code will expired in ',
                      style: TextStyle(
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '00:30',
                      style: TextStyle(
                        color: Color(0xFFFF2C54),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
              ),
              OTPTextField(
                margin: const EdgeInsets.all(7),
                length: 4,
                width: MediaQuery.of(context).size.width,
                // contentPadding: EdgeInsets.all(50),
                fieldWidth: 50,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $pin'),
                        );
                      }
                  );
                },
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ConfirmPassScreen();
                  },),);
                },
                child: const ConfirmButton(
                  howMuchRoundedCorners: 28.0,
                  text: 'Continue',
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                'Resend OTP Code',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textBaseline: TextBaseline.ideographic,
                  decoration: TextDecoration.underline,
                ),
              ),
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
