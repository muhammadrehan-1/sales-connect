import 'package:connect_sales/provider/buyer_or_seller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../../models/product.dart';

class ProductHome extends ConsumerWidget {
  const ProductHome({super.key, required this.product});

 final Product product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isBuyer = ref.watch(buyerOrSellerProvider);
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
            isBuyer? Image(
              height: 84,
              width: 87,
              image: AssetImage(product.image),) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image(
                  height: 74,
                  width: 77,
                  image: AssetImage(product.image),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  '${product.price}\$',
                  textAlign: TextAlign.right,
                  style: const TextStyle().copyWith(
                    color: orangeIconsText,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            product.name,
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
