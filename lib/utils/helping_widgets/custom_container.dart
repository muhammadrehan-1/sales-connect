import 'package:connect_sales/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: ShapeDecoration(
        color: backgroundContainerOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.52),
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.145,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'UPLOAD PRESCRIPTION',
              style:  GoogleFonts.beVietnamPro().copyWith(
                color: const Color(0xFF151921),
                fontSize: 14.64,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.10,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                'Upload a Prescription and Tell Us what you Need. We do the Rest.!',
                style: GoogleFonts.lato().copyWith(
                  color: const Color(0xFF151921),
                  fontSize: 11.39,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    'FLAT 25% OFF ON MEDICINES*',
                    style: GoogleFonts.beVietnamPro().copyWith(
                      color: const Color(0xFF151921),
                      fontSize: 9.76,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF76979F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.51),
                    ),
                  ),
                  child: Text(
                    'ORDER NOW',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato().copyWith(
                      color: Colors.white,
                      fontSize: 11.39,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
