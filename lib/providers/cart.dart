import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem>? _items;

  Map<String, CartItem> get items {
    return {..._items!};
  }

  void addItem(String productId, String title, double price) {
    if (_items!.containsKey(productId)) {
      _items!.update(
        productId,
        (value) => CartItem(
            id: value.id,
            title: value.title,
            quantity: value.quantity + 1,
            price: value.price),
      );
    } else {
      _items!.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1,
        ),
      );
    }
  }
}
