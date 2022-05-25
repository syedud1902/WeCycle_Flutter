import 'package:firebase_database/firebase_database.dart';

List finalProducts = [];
List prodLocations = [];

class DatabaseService {
  // Retreieve users/products from firebase 
  static getUsers() {
    FirebaseDatabase.instance
        .reference()
        .child("products")
        .once()
        .then((DataSnapshot value) {
      for (var val in value.value.entries) {
        finalProducts.add(val.value);
      }
      print(finalProducts.elementAt(100)['name']);
    });
    return finalProducts;
  }

  // Retreieve product locations from firebase 
  static getProductLocations() {
    FirebaseDatabase.instance
        .reference()
        .child("locations")
        .once()
        .then((DataSnapshot value) {
      // value.value.entries.forEach((key, value) {
      //   Product product = createProduct(value);
      //   products.add(product);
      // });
      for (var val in value.value.entries) {
        // print(val.toString());
        prodLocations.add(val.value);
        // print(products.last);
      }
      print(prodLocations.elementAt(100)['latitude']);
    });
    return prodLocations;
  }
}
