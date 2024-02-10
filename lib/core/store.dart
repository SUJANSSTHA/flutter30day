import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

// class Mystore extends VxStore {
//   CatalogModel catalog;
//   CartModel cart;

//   Mystore() {
//     // catalog = CatalogModel();
//     // cart = CartModel();
//     cart.catalog = catalog;
//   }
// }
class Mystore extends VxStore {
  CatalogModel catalog = CatalogModel();
  CartModel cart = CartModel();

  Mystore() {
    cart.catalog = catalog;
  }
}
