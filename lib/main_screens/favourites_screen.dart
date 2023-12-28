import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/helping_widgets/product_favourites.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key, required this.favouriteProducts});

  final List<Product> favouriteProducts;
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 2),
          itemCount: favouriteProducts.length,
          itemBuilder: (BuildContext context, int item) {
            return ProductFavourites(
                image: favouriteProducts[item].image,
                price: favouriteProducts[item].price,
                name: favouriteProducts[item].name);
          });
  }
}
