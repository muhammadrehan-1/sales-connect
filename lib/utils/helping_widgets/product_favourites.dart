import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';

class ProductFavourites extends StatelessWidget {
  const ProductFavourites({super.key, required this.image, required this.name, required this.price});

  final String image;
  final String name;
  final double price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.81, color: Color(0xFFEFEDE9),),
                borderRadius: BorderRadius.circular(16.27),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                //If you want to check that SVG is working or not un comment below code and make sure in dummy products change the image name to svg.

                // SvgPicture.asset(image,
                // height: MediaQuery.of(context).size.height * 0.1,
                //   width: 87,
                // ),
                Image(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: 87,
                  image: AssetImage(image),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: pink,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SvgPicture.asset('assets/icons/heart_icon_colored_2.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
              ],
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.009,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro().copyWith(
              color: const Color(0xFF151921),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.004,
          ),
          Text(
            '\$$price',
            style: const TextStyle().copyWith(
              color: orangeIconsText,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
