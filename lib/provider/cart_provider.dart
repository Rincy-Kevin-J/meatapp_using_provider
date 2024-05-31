
import 'package:flutter/material.dart';
import '../models/model.dart';

List<Products> fish = [
  Products(name: "Tuna", price: 120, image: "assets/images/Tuna.png"),
  Products(name: "Prawns", price: 100, image: "assets/images/prawns.png"),
  Products(name: "Salmon", price: 500, image: "assets/images/Salmon.png"),
  Products(name: "Lobster", price: 800, image: "assets/images/Lobsters.png"),
  Products(name: "Crab", price: 150, image: "assets/images/Crab.png"),
  Products(name: "Squid", price: 210, image: "assets/images/Squid.png"),
  Products(name: "Karimeen", price: 600, image: "assets/images/Karimeen.png"),
];
List<Products> marinated = [
  Products(name: "Chicken", price: 350, image: "assets/images/Chicken.png",),
  Products(name: "Fish", price: 260, image: "assets/images/fish.png",),
  Products(name: "Beef", price: 580, image: "assets/images/beef.png",),
  Products(name: "Mutton", price: 800, image: "assets/images/Mutton.png",),
];

List<Products> meat = [
  Products(name: "Chicken", price: 120, image: "assets/images/mtchick.png",),
  Products(name: "Mutton", price: 350, image: "assets/images/mtmutton.png",),
  Products(name: "Beef", price: 550, image: "assets/images/mtbeef.png",),
  Products(name: "Pork", price: 620, image: "assets/images/mtpork.png",),
  Products(name: "Duck", price: 400, image: "assets/images/mtduck.png",),
];

List<Products> readytocook = [
  Products(name: "Fried Chicken", price: 370, image: "assets/images/rdchick.png",),
  Products(name: "Mock Meat", price: 210, image: "assets/images/rdmeat.png",),
  Products(name: "Roast Pork", price: 430, image: "assets/images/rdpork.png",),
  Products(name: "Soya Tikka", price: 120, image: "assets/images/tika.png",),
  Products(name: "Like chicken", price: 260, image: "assets/images/rdlike.png",),
  Products(name: "Vindaloo Paste", price: 180, image: "assets/images/rdpasta.png",),
];

class CartProvider extends ChangeNotifier {

  var fishh = fish;

  List<Products> get fishhome => fishh;

  var marinateh = marinated;

  List<Products> get marinatedhome => marinateh;

  var meath = meat;

  List<Products> get meathome => meath;

  var readytocookh = readytocook;

  List<Products> get readytocookhome => readytocookh;


  final List<Products> cart = [];

  List<Products> get cartall => cart;

  void addToCart(Products data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1 ) {
      cart[index].count =cart[index].count +1;
    }else {
      cart.add(data);
    }
    notifyListeners();
  }

  void removeFromCart(Products data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1) {
      if (cart[index].count > 1) {
        cart[index].count--;
      } else {
        cart.removeAt(index);
      }
      notifyListeners();
    }
  }

}
