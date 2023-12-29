// import 'package:uuid/uuid.dart';
//
// var uuid =  const Uuid();
class Product {
     Product({required this.info,required this.image, required this.name, required this.price, this.quantity = 1});

  final String image;
  final String name;
  final double price;
  final String info;
   int quantity;

}