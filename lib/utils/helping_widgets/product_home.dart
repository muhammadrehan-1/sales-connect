import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductHome extends StatelessWidget {
  const ProductHome({super.key, required this.image, required this.name});

  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.81, color: Color(0xFFEFEDE9),),
                borderRadius: BorderRadius.circular(16.27),
              ),
            ),
            child:
            //If you want to check that SVG is working or not un comment below code and make sure in dummy products change the image name to svg.

            // SvgPicture.asset(image, height: 84, width: 87,),
            Image(
              height: 84,
              width: 87,
              image: AssetImage(image),),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro().copyWith(
              color: const Color(0xFF151921),
              fontSize: 11.39,
              fontWeight: FontWeight.w600,
            ),
          ),



        ],
      ),
    );
  }
}
