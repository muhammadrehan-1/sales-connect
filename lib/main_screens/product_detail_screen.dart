import 'package:connect_sales/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../models/product.dart';
import '../provider/favourites_provider.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  ConsumerState<ProductDetailScreen> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  var items = 1;
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyLight,
      appBar: AppBar(
        backgroundColor: greyLight,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //If you want to check that SVG is working or not un comment below code and make sure in dummy products change the image name to svg.
            // SvgPicture.asset(image,
            //   height: MediaQuery.of(context).size.height * 0.3,
            //   width: MediaQuery.of(context).size.width * 0.5,
            //   fit : BoxFit.contain,
            //     semanticsLabel: 'My SVG Picture',
            // ),
            Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(widget.product.image),
                height: MediaQuery.of(context).size.height * 0.3,
                // width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              width: MediaQuery.of(context).size.width,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Text(
                    widget.product.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle().copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${widget.product.price}',
                        style: const TextStyle().copyWith(
                          color: orangeIconsText,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        width: 64,
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        decoration: const ShapeDecoration(
                          color: greyLight,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            final isAdded = ref
                                .read(favouriteItemsProvider.notifier)
                                .toggleFavouriteStatus(widget.product);
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(
                                isAdded? 'Item added as favourite' : 'Item removed from favourite'
                              ),),
                            );
                          },
                          child: isFavourite
                              ? SvgPicture.asset(
                                  'assets/icons/heart_icon_colored_2.svg')
                              : SvgPicture.asset('assets/icons/heart_icon.svg'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      widget.product.info,
                      textAlign: TextAlign.start,
                      style: const TextStyle().copyWith(
                        wordSpacing: 2.0,
                        height: 2.0,
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.center,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(
                                  side: BorderSide(
                            color: orangeIconsText,
                          ))),
                          child: SvgPicture.asset(
                              'assets/icons/cart_icon_colored.svg'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (items == 1) {
                                      return;
                                    }
                                    items--;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: const ShapeDecoration(
                                      shape: CircleBorder(
                                          side: BorderSide(
                                    color: iconGrey,
                                  ))),
                                  child: const Icon(
                                    Icons.remove,
                                    color: iconGrey,
                                  ),
                                ),
                              ),
                              Text(
                                '$items',
                                textAlign: TextAlign.center,
                                style: const TextStyle().copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    items++;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: const ShapeDecoration(
                                      shape: CircleBorder(
                                          side: BorderSide(
                                    color: iconGrey,
                                  ))),
                                  child: const Icon(Icons.add, color: iconGrey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.only(right: 25),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: ShapeDecoration(
                        color: orangeMain,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        textAlign: TextAlign.center,
                        style: const TextStyle().copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
