import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Product>>{
  FavouriteMealsNotifier() : super([]);

  bool toggleFavouriteStatus(Product product){
    final isAdded = state.contains(product);
    if(isAdded){
      state = state.where((element) {
        return element.name != product.name;
      }).toList();
      return false;
    }else{
      state = [...state, product];
      return true;
    }
  }

}

final favouriteItemsProvider = StateNotifierProvider<FavouriteMealsNotifier, List<Product>>((ref){
  return FavouriteMealsNotifier();
});