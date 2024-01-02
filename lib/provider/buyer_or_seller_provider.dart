import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuyerOrSellerNotifier extends StateNotifier<bool>{
   BuyerOrSellerNotifier() : super(true);

   void isBuyer( bool isBuyer){
     state = isBuyer;
   }
}

final buyerOrSellerProvider = StateNotifierProvider<BuyerOrSellerNotifier, bool>((ref) {
  return BuyerOrSellerNotifier();
});