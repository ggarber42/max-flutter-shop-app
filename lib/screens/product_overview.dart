import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductOverview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: ProductsGrid(),
    );
  }
}


