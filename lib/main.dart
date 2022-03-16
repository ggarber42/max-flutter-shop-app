import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail.dart';

import './screens/product_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShopp',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato'
      ),
      home: ProductOverview(),
      routes: {
        ProductDetail.routeName: (ctx) => ProductDetail()
      },
    );
  }
}
