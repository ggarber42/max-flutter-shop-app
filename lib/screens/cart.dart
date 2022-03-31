import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart' show Cart; // importa apenas a classe cart
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context, listen: true);
    // seria melhor um consumer, mas o max tava cansado
    return Scaffold(
        appBar: AppBar(
          title: Text('Your cart!'),
        ),
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Chip(
                      label: Text(
                        '\$ ${cartData.totalAmount}',
                        style: TextStyle(
                            color: Theme.of(context)
                                .primaryTextTheme
                                .title!
                                .color),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Order Now'),
                      textColor: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: cartData.items.length,
              itemBuilder: (ctx, i) => CartItem(
                cartData.items.values.toList()[i].id,
                cartData.items.keys.toList()[i],
                cartData.items.values.toList()[i].price,
                cartData.items.values.toList()[i].quantity,
                cartData.items.values.toList()[i].title,
              ),
            ))
          ],
        ));
  }
}
