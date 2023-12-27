import 'package:connect_sales/dummy%20data/dummy_products.dart';
import 'package:connect_sales/main_screens/product_detail_screen.dart';
import 'package:connect_sales/utils/helping_widgets/custom_container.dart';
import 'package:connect_sales/utils/helping_widgets/product_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Product> favouriteProducts = [];
  // void addingProductToFavourites(String image, String name, double price, String info){
  //   favouriteProducts.add(
  //     Product(info: info, image: image, name: name, price: price),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  fillColor: backgroundGrey,
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/search_icon.svg',
                    ),
                  ),
                  hintText: 'Search product',
                  hintStyle: const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 46,
              width: 46,
              child: SvgPicture.asset('assets/icons/chart_button.svg'),
            ),
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 46,
                  width: 46,
                  child:
                      SvgPicture.asset('assets/icons/notification_button.svg'),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: backgroundOrange,
                    child: Text(
                      '3',
                      style: const TextStyle().copyWith(
                        color: Colors.white,
                        fontSize: 9.14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomContainer(),
                SizedBox(
                  width: 15,
                ),
                CustomContainer(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Recent products',
            style: GoogleFonts.inter().copyWith(
              color: const Color(0xFF393F42),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8, crossAxisCount: 3),
            itemCount: dummyProducts.length,
            itemBuilder: (BuildContext context, int item) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ProductDetailScreen(
                          image: dummyProducts[item].image,
                          name: dummyProducts[item].name,
                          info: dummyProducts[item].info,
                          price: dummyProducts[item].price);
                    }),
                  );
                },
                child: ProductHome(
                    image: dummyProducts[item].image,
                    name: dummyProducts[item].name),
              );
            },
          ),
        ),
      ],
    );
  }
}
