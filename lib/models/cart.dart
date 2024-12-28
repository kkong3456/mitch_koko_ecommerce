import 'package:flutter/material.dart';
import 'package:mitch_koko_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoes',
      imagePath: 'lib/images/nike1.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      description:
          'You\'ve got the hops and the speed-lace up in shoes thsa ..',
      imagePath: 'lib/images/nike2.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description:
          'A secure midfoot strapis suited for scoring binges and defensive...',
      imagePath: 'lib/images/nike3.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      description:
          'A secure lowfoot strap is suited for scoring binges and defensive...',
      imagePath: 'lib/images/nike4.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
