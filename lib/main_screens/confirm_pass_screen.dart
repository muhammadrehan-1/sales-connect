// import 'package:connect_sales/authentication_screens/sign_up_screen.dart';
// import 'package:connect_sales/main_screens/forgot_pass_screen.dart';
// import 'package:connect_sales/main_screens/main_screen.dart';
import 'package:connect_sales/utils/helping_widgets/confirm_button.dart';
// import 'package:connect_sales/utils/helping_widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';

class ConfirmPassScreen extends StatefulWidget {
  const ConfirmPassScreen({super.key});

  @override
  State<ConfirmPassScreen> createState() => _ConfirmPassScreenState();
}

class _ConfirmPassScreenState extends State<ConfirmPassScreen> {
  bool isPassHidden = true;
  bool isPassHidden2 = true;
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
                'Confirm Password',
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
                'Please enter your new password',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
              ),
              TextFormField(
                obscureText: isPassHidden2,
                decoration: InputDecoration(
                  labelText: ' New Password ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.only(left: 35),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(18),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isPassHidden2 = !isPassHidden2;
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width,
              ),
              TextFormField(
                obscureText: isPassHidden,
                decoration: InputDecoration(
                  labelText: ' Confirm Password ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 18,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                  onTap: (){

                  },
                  child: const ConfirmButton(howMuchRoundedCorners: 28.0, text: 'Continue',)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Don’t have an account? ',
              //       textAlign: TextAlign.center,
              //       style: const TextStyle().copyWith(
              //         color: greyDark,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 3,
              //     ),
              //     InkWell(
              //       onTap: () {
              //         widget.title == 'Seller'
              //             ? Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) {
              //             return const SignUpScreen(title: 'Seller');
              //           }),
              //         )
              //             : Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) {
              //             return const SignUpScreen(title: 'Buyer');
              //           }),
              //         );
              //       },
              //       child: Text(
              //         'Sign Up',
              //         textAlign: TextAlign.center,
              //         style: const TextStyle().copyWith(
              //           color: orange,
              //           fontSize: 16,
              //           fontWeight: FontWeight.w400,
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
