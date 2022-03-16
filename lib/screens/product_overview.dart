import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';
import '../models/product.dart';
import '../utils/dummy_data.dart';

class ProductOverview extends StatelessWidget {
  final List<Product> loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: ProductGrid(loadedProducts: loadedProducts),
    );
  }
}


