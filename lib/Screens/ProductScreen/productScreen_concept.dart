import 'package:flutter/material.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';
import 'package:wecycle/Screens/Extensions/products.dart';

class ProductScreenConcept extends StatelessWidget {
  final item;

  getCondition(item) {
    String condition;
    if (item == 1) {
      return condition = 'Condition: Old/Used';
    } else if (item == 2) {
      return condition = 'Condition: Good';
    } else if (item == 3) {
      return condition = 'Condition: Brand New';
    } else if (item == 4) {
      return condition = 'Condition: Lightly Used';
    } else if (item == 5) {
      return condition = 'Condition: Box Pack';
    }
  }

  const ProductScreenConcept({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width,
                        color: products[0].color,
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              color: products[0].color,
                              image: DecorationImage(
                                image: AssetImage(products[0].image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: greenColor.withOpacity(0.4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width - 40,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name'],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "\$${item['hourlyRate']}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: greenColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                height: 80,
                                width: MediaQuery.of(context).size.width - 40,
                                child: Text(
                                  item['desc'],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 20,
                                width: MediaQuery.of(context).size.width - 40,
                                child: Row(
                                  children: [
                                    Text(
                                      getCondition(item['conditionId']),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 20,
                                width: MediaQuery.of(context).size.width - 40,
                                child: Row(
                                  children: [
                                    Text(
                                      'Sample Acessory Text',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width - 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/profile_pic.jpg'),
                                      radius: 16,
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'John Doe',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Unavailable',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.chat_bubble_outline_rounded),
                                      color: Colors.white,
                                      iconSize: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 22),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width - 25,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 110,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1.5,
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                              color: Colors.transparent,
                                            ),
                                            child: Center(
                                              child: Icon(Icons.add,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.transparent),
                                            child: Center(
                                              child: Text(
                                                '0',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 1.5,
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                              color: Colors.transparent,
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                      color: greenColor,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 9),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width - 20,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 49,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 11),
                                    Container(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width -
                                          85,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: greenColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                    Container(
                      height: 50,
                      width: 145,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_rounded),
                            iconSize: 18,
                            color: greenColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            iconSize: 18,
                            color: greenColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                            iconSize: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
