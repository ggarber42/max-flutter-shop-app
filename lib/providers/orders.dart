import 'package:flutter/foundation.dart';

import '../models/order_item.dart';
import '../models/cart_item.dart';

class Orders with ChangeNotifier{
  List<OrderItem> _orders = [];

  List<OrderItem> get order{
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total){
    _orders.insert(0, OrderItem(
      id: DateTime.now().toString(),
      amount: total,
      dateTime: DateTime.now(),
      products: cartProducts,
    ));
    notifyListeners();
  }

}