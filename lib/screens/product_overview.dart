import 'package:flutter/material.dart';

import '../widgets/product_item.dart';
import '../models/product.dart';
import '../utils/dummy_data.dart';

class ProductOverview extends StatelessWidget {
  final List<Product> loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, i) => ProductItem(
                loadedProducts[i].id,
                loadedProducts[i].title,
                loadedProducts[i].imageUrl,
              )),
    );
  }
}
