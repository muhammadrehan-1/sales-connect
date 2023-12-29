import 'package:connect_sales/provider/cart_provider.dart';
import 'package:connect_sales/utils/helping_widgets/listTile_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> products = ref.watch(cartProvider);
    final noOfItems = products.length;
    final double priceOfAllItems = ref.read(cartProvider.notifier).addingPriceOfAllItems(products);
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
        title: Column(
          children: [
          Text(
          'Your Cart',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '$noOfItems items',
              style: const  TextStyle().copyWith(
                color: grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: noOfItems,
                itemBuilder: (context, index){
                  return  ListTileCart(
                   product: products[index],
                  );

            }),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x26D9D9D9),
                  blurRadius: 20,
                  offset: Offset(0, -15),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total:',
                        style: const TextStyle().copyWith(
                          color:grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '\$${priceOfAllItems.toStringAsFixed(2)}',
                        style: const TextStyle().copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.065,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: orangeMain,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Check Out',
                      style: const TextStyle().copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
