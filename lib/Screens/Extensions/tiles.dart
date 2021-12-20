import 'package:flutter/material.dart';

class Tile {
  final double index, height, width;
  Tile(this.index, this.height, this.width);
}

List<Tile> tiles = [
  Tile(
    1,
    200,
    100,
  ),
  Tile(
    2,
    100,
    50,
  ),
  Tile(
    3,
    50,
    20,
  ),
  Tile(
    4,
    200,
    100,
  ),
  Tile(
    5,
    100,
    50,
  ),
];

List<Tile> tiles2 = [
  Tile(
    1,
    50,
    100,
  ),
  Tile(
    2,
    200,
    50,
  ),
  Tile(
    3,
    100,
    20,
  ),
  Tile(
    4,
    50,
    100,
  ),
  Tile(
    5,
    200,
    50,
  ),
];
