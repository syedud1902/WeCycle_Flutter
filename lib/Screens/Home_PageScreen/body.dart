import 'package:flutter/material.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';
import 'package:wecycle/Screens/Extensions/products.dart';
import 'package:wecycle/Screens/ProductScreen/productScreen.dart';
import 'package:wecycle/Screens/ProductScreen/productScreen_concept.dart';

class Body_Row extends StatefulWidget {
  final List products;

  const Body_Row({Key? key, required this.products}) : super(key: key);
  @override
  _Body_RowState createState() => _Body_RowState(products);
}

class _Body_RowState extends State<Body_Row> {
  final List productsList;

  _Body_RowState(this.productsList);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        itemCount: productsList.length,
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemCard(
          item: productsList.elementAt(index),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final item;

  const ItemCard({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreenConcept2(
              item: item,
            ),
          ),
        );
      },
      child: Row(children: [
        Column(
          children: [
            Container(
              child: Image.asset('assets/images/sneaker.png'),
              height: 160,
              padding: const EdgeInsets.all(15.0),
              width: 160.0,
              decoration: BoxDecoration(
                color: products[0].color,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
            ),
            Text('\$${item['hourlyRate']}',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: greenColor)),
            Text(item['name']),
          ],
        ),
        SizedBox(width: 20),
      ]),
    );
  }
}
