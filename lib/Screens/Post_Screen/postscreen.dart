// import 'dart:js_util';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:wecycle/Screens/Extensions/globals.dart';
import 'package:wecycle/Screens/Extensions/products.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyColor,
        centerTitle: true,
        title: Text(
          'New Post',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Post_body(),
      ),
    );
  }
}

class Post_body extends StatefulWidget {
  @override
  _Post_bodyState createState() => _Post_bodyState();
}

final inst = FirebaseDatabase.instance;

class _Post_bodyState extends State<Post_body> {
  final ref = inst.reference();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 228,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Container(
              height: 60,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  'Please select a type of post',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Post to Sell',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  'Post to Rent',
                  style: TextStyle(
                    color: greenColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
