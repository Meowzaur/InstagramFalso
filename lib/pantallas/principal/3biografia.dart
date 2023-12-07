// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Biografia extends StatelessWidget {
  const Biografia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'The Cake Bake Shop',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            Text(
              'Dessert Shop',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            Text(
              'Williams-Sonoma/Oprahs O List/Food Network/Best Bakery 2016/17/18/Best Midwest 2016/17/ Best Apple Pie/Best Indy 2016/18/Indy A-List 2016/17.',
              style: TextStyle(fontSize: 15.0),
            ),
            Text(
              'www.thecakebakeshop.com',
              style: TextStyle(color: Colors.blue, fontSize: 14.0),
            ),
            Text(
              '6515 Carrollton Ave, Indianapolis, Indiana',
              style: TextStyle(color: Colors.blue, fontSize: 14.0),
            ),
            Text(
              'Followed by niceytreat, shop_civvies, beefandboards + 250 more',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
