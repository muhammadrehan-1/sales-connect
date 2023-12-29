import 'package:connect_sales/utils/helping_widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../utils/helping_widgets/confirm_button.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  var isPassHidden = true;
  @override
  Widget build(BuildContext context) {
    final Widget customSizedBox = SizedBox(
      height: MediaQuery.of(context).size.height * 0.015,
      width: MediaQuery.of(context).size.width,
    );
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
          'Profile',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
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
                      ),
                    ),
                  ),
                  child: SvgPicture.asset('assets/icons/message_person.svg'),
                ),
                Positioned(
                  left: 70,
                  bottom: 1,
                  child: SvgPicture.asset('assets/icons/edit_profile_image.svg'),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child:  Column(
                children: [
              const CustomTextFormField(
                label: 'First Name',
                hint: '',
                iconPath: 'assets/icons/user.svg',
              ),
              customSizedBox,
              const CustomTextFormField(
                label: 'Last Name',
                hint: '',
                iconPath: 'assets/icons/user.svg',
              ),
              customSizedBox,
              const CustomTextFormField(
                  label: 'Phone Number',
                  hint: '',
                  iconPath: 'assets/icons/phone.svg'),
              customSizedBox,
              const CustomTextFormField(
                  label: 'Email',
                  hint: '',
                  iconPath: 'assets/icons/mail.svg'),
              customSizedBox,
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                ),
              ),
              customSizedBox,
              const CustomTextFormField(
                  label: 'Address',
                  hint: '',
                  iconPath: 'assets/icons/location_point.svg'),
              customSizedBox,
              const CustomTextFormField(
                  label: 'Postal Code',
                  hint: '',
                  iconPath: 'assets/icons/location_point.svg'),
              customSizedBox,
              TextFormField(
                decoration: InputDecoration(
                  labelText: ' Home Number ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.only(left: 35),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(18),
                    child: SvgPicture.asset('assets/icons/location_point.svg'),
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
              const ConfirmButton(howMuchRoundedCorners: 28, text: 'Save Changes',),
              customSizedBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
