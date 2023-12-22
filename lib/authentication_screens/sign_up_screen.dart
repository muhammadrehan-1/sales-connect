import 'package:connect_sales/authentication_screens/upload_cnic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../utils/helping_widgets/confirm_button.dart';
import '../utils/helping_widgets/textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.title});

  final String title;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  bool isPassHidden = true;
  @override
  Widget build(BuildContext context) {
    final Widget customSizedBox = SizedBox(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width,
    );
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
          'Sign Up for ${widget.title}',
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
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                'Register Account',
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
                'Complete your details',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width,
              ),
              const CustomTextFormField(
                label: 'First Name',
                hint: 'Enter your First Name',
                iconPath: 'assets/icons/user.svg',
              ),
              customSizedBox,
              const CustomTextFormField(
                label: 'Last Name',
                hint: 'Enter your Last Name',
                iconPath: 'assets/icons/user.svg',
              ),
              customSizedBox,
              const CustomTextFormField(
                label: 'Email',
                hint: 'Enter your email',
                iconPath: 'assets/icons/mail.svg',
              ),
              customSizedBox,
               TextFormField(
                 obscureText: isPassHidden,
                decoration: InputDecoration(
                  labelText: ' Password ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.only(left: 35),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(18),
                    child: InkWell(
                        onTap: (){
                          setState(() {
                            isPassHidden = !isPassHidden;
                          });
                        },
                        child: SvgPicture.asset('assets/icons/lock.svg'),),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                ),
              ),
              customSizedBox,
              TextFormField(
                obscureText: isPassHidden,
                decoration: InputDecoration(
                  labelText: ' Confirm password ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.only(left: 35),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(18),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isPassHidden = !isPassHidden;
                        });
                      },
                      child: SvgPicture.asset('assets/icons/lock.svg'),),
                  ),
                  hintText: 'Re-enter your password',
                  hintStyle: const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                ),
              ),
              customSizedBox,
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: ShapeDecoration(
                        color: isChecked ? orange : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFF757575),
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: isChecked
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 10,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'By continuing your confirm that you agree\nwith our Term and Condition',
                    textAlign: TextAlign.start,
                    style: const TextStyle().copyWith(
                      color: grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const UploadCnicScreen();
                      },
                    ),
                  );
                },
                child: const ConfirmButton(
                  howMuchRoundedCorners: 28.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
