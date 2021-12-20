import 'package:flutter/material.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<String> buttonLabels = ['Sellers/Lenders', 'Buyers/Renters'];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Orders',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline_rounded),
                  color: greenColor,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 35,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedindex = 0;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            color: selectedindex == 0
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border: selectedindex == 0
                                ? Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2)
                                : Border.all(
                                    color: Colors.transparent, width: 2)),
                        child: Center(
                          child: Text(
                            'Sellers/Lenders',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedindex = 1;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedindex == 1
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: selectedindex == 1
                              ? Border.all(
                                  color: Colors.grey.withOpacity(0.5), width: 2)
                              : Border.all(color: Colors.transparent, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            'Buyers/Renters',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height / 2.3,
              child: Center(child: Image.asset('assets/images/post_bg.png')),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
