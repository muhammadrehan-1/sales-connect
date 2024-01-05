import 'package:connect_sales/authentication_screens/sign_up_screen.dart';
import 'package:connect_sales/main_screens/forgot_pass_screen.dart';
import 'package:connect_sales/main_screens/main_screen.dart';
import 'package:connect_sales/utils/helping_widgets/confirm_button.dart';
import 'package:connect_sales/utils/helping_widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key, required this.title});

  final String title;
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  bool isPassHidden = true;
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
          'Sign In for ${widget.title}',
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
                'Welcome Back',
                textAlign: TextAlign.center,
                style: const TextStyle().copyWith(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                'Sign in with your email and password',
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
              const CustomTextFormField(
                  label: 'Email',
                  hint: 'Enter your email',
                  iconPath: 'assets/icons/mail.svg'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width,
              ),
               TextFormField(
                obscureText: isPassHidden,
                decoration: InputDecoration(
                  labelText: ' Password ',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Text(
                          'Remember me',
                          style: const TextStyle().copyWith(
                            color: grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const ForgotPassScreen();
                      },),);

                    },
                    child: Text(
                      'Forgot Password',
                      style: const TextStyle().copyWith(
                        color: orange,
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                        textBaseline: TextBaseline.ideographic,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const MainScreen();
                    },),);
                  },
                  child: const ConfirmButton(howMuchRoundedCorners: 20.0, text: 'Continue',)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    textAlign: TextAlign.center,
                    style: const TextStyle().copyWith(
                      color: greyDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      widget.title == 'Seller'
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const SignUpScreen(title: 'Seller');
                              }),
                            )
                          : Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const SignUpScreen(title: 'Buyer');
                              }),
                            );
                    },
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: const TextStyle().copyWith(
                        color: orange,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
