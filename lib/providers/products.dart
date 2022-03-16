import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier{ /* with é para chamar o mixin */
  List<Product> _items = [];

  List<Product> get items{
    return [..._items];
  }

  void addProduct(){
    notifyListeners(); /* vem do mixin*/
  }
}