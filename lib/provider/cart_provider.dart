import 'package:connect_sales/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super([]);

  void addingIntoCart(Product product, int quantity) {
    final isAdded = state.any((element) => element.name == product.name);
    if (isAdded) {
      state = state.where((element) {
        return element.name != product.name;
      }).toList();
      state = [
        ...state,
        Product(
            info: product.info,
            image: product.image,
            name: product.name,
            price: product.price,
            quantity: quantity)
      ];
    }else {
      state = [...state,  Product(
          info: product.info,
          image: product.image,
          name: product.name,
          price: product.price,
          quantity: quantity)];
    }
  }


  double addingPriceOfAllItems(List<Product> products){
    double priceOfEveryItem = 0;
    for (int i = 0; i < products.length; i++){
      priceOfEveryItem = priceOfEveryItem + products[i].price;
    }
    return priceOfEveryItem;
  }

  void removingFromCart(Product product) {
    state = state.where((element) {
      return element.name != product.name;
    }).toList();
  }

  int gettingListLength(){
    return state.length;
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<Product>>((ref) {
  return CartNotifier();
});
