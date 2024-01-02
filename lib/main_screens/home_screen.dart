import 'package:connect_sales/dummy%20data/dummy_products.dart';
import 'package:connect_sales/main_screens/product_detail_screen.dart';
import 'package:connect_sales/provider/buyer_or_seller_provider.dart';
import 'package:connect_sales/utils/helping_widgets/custom_container.dart';
import 'package:connect_sales/utils/helping_widgets/icon_with_numbers.dart';
import 'package:connect_sales/utils/helping_widgets/product_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';
import '../dummy data/dummy_notifications.dart';
import '../provider/cart_provider.dart';


class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final dummyNotificationsLength = dummyNotifications.length;
    final cartListLength = ref.watch(cartProvider.notifier).gettingListLength();
    final isBuyer = ref.watch(buyerOrSellerProvider);
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
              width: isBuyer ? MediaQuery.of(context).size.width * 0.5: MediaQuery.of(context).size.width * 0.8,
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
            isBuyer? const SizedBox(
              width: 10,
            ) : SizedBox(),
           isBuyer ? IconsWithNumbers(iconNumber: cartListLength, image: 'assets/icons/chart_button.svg', isNotificationScreen: false) : SizedBox(),
            isBuyer? const SizedBox(
              width: 10,
            ) : SizedBox(),
            isBuyer ?IconsWithNumbers(iconNumber: dummyNotificationsLength, image: 'assets/icons/notification_button.svg', isNotificationScreen: true,) : SizedBox(),
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
                         product: dummyProducts[item],
                      );
                    },

                    ),
                  );
                },
                child: ProductHome(product: dummyProducts[item]),
              );
            },
          ),
        ),
      ],
    );
  }
}
