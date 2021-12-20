import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Product2 {
  final String title, image, description;
  final int id, price, size;
  final Color color;

  Product2(
      {required this.title,
      required this.image,
      required this.description,
      required this.id,
      required this.price,
      required this.size,
      required this.color});
}

List<Product2> products = [
  Product2(
    id: 0,
    title: 'Jordan 1 UNC',
    price: 250,
    size: 12,
    description:
        'Jordan Brand paid homage to MJ’s alma mater with the Air Jordan 1 High University Blue. The University Blue colorway is prominent in the Jordan 1’s history. The first UNC-inspired Jordan 1 dates back to 1985 when the Jordan 1 debuted. Since then, there have been numerous iterations of the UNC 1, most recently the Jordan 1 Retro High Fearless UNC To Chicago. Jumpman is building off of its past and switching it up this week with a new iteration.',
    image: 'assets/images/sneaker.png',
    color: Colors.white,
  ),
];
