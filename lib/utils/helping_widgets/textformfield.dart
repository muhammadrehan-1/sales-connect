import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../colors.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.label, required this.hint, required this.iconPath});

  final String label;
  final String hint;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: ' $label ',
        labelStyle:  const TextStyle().copyWith(
          color: grey,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.only(left: 35),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(18),
          child: SvgPicture.asset(iconPath),
        ),
        hintText: hint,
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
    );
  }
}
