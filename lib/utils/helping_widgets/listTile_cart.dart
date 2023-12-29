import 'package:flutter/material.dart';
import '../../colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/product.dart';
import '../../provider/cart_provider.dart';

class ListTileCart extends ConsumerWidget {
  const ListTileCart({super.key,required this.product});

 final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Container(
            width:  MediaQuery.of(context).size.width * 0.25,
            height:   MediaQuery.of(context).size.height * 0.13,
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: greyLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Image(image: AssetImage(product.image),),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(
                  product.name,
                  style: const TextStyle().copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             Row(
               children: [
                 Text(
                   '\$${product.price}',
                   style: const TextStyle().copyWith(
                     color: orangeIconsText,
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 const SizedBox(
                   width: 6,
                 ),
                 Text(
                   'x${product.quantity}',
                   style: const TextStyle().copyWith(
                     color: grey,
                     fontSize: 14,
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ],
             )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.23,
          ),
          InkWell(
              onTap:(){
                ref.read(cartProvider.notifier).removingFromCart(product);
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Item removed from cart.'),),);
    },
              child: const Icon(Icons.delete, color: Colors.redAccent,)),
        ],
      ),
    );
  }
}
