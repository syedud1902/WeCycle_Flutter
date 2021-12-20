import 'package:firebase_database/firebase_database.dart';

List finalProducts = [];

class DatabaseService {
  static getUsers() {
    FirebaseDatabase.instance
        .reference()
        .child("products")
        .once()
        .then((DataSnapshot value) {
      // value.value.entries.forEach((key, value) {
      //   Product product = createProduct(value);
      //   products.add(product);
      // });
      for (var val in value.value.entries) {
        // print(val.toString());
        finalProducts.add(val.value);
        // print(products.last);
      }
      print(finalProducts.elementAt(100)['name']);
    });
    return finalProducts;
  }
}
