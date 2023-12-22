import 'package:connect_sales/dummy%20data/dummy_products.dart';
import 'package:flutter/material.dart';
import '../utils/helping_widgets/product_favourites.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 2),
          itemCount: dummyProducts.length,
          itemBuilder: (BuildContext context, int item) {
            return ProductFavourites(
                image: dummyProducts[item].image,
                price: dummyProducts[item].price,
                name: dummyProducts[item].name);
          });
  }
}
