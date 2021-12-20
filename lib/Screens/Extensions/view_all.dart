import 'package:flutter/material.dart';
import 'package:wecycle/Database/Database.dart';
import 'globals.dart';
import 'products.dart';

class ViewAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: greyColor,
        centerTitle: true,
        title: Text('View All',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list_rounded),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  final List items = List.from(finalProducts);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ViewAllCategories(),
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    item: items.elementAt(index),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final item;

  const ItemCard({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/images/sneaker.png'),
            height: 130,
            padding: const EdgeInsets.all(15.0),
            width: 130,
            decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(item['name']),
          ),
          Text('\$${item['hourlyRate']}.00',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: greenColor)),
        ],
      ),
      SizedBox(width: 20),
    ]);
  }
}

class ViewAllCategories extends StatefulWidget {
  @override
  _ViewAllCategoriesState createState() => _ViewAllCategoriesState();
}

class _ViewAllCategoriesState extends State<ViewAllCategories> {
  List<String> categories = ["All Items", "Sell", "Rent", "Shoes", "Clothes"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: selectedIndex == index ? greenColor : Colors.black12,
                )),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 40,
              color: selectedIndex == index ? greenColor : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
