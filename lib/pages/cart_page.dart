import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.accentColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CardTotal(),
        ],
      ),
    );
  }
}

class _CardTotal extends StatelessWidget {
  const _CardTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as Mystore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.cardColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet.".text.make(),
              ));
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.theme.canvasColor),
            ),
            child: "Buy".text.white.make(),
          ).w24(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as Mystore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    _cart.remove(_cart.items[index]);
                    // setState(() {});
                  },
                ),
                title: _cart.items[index].name.text.make()),
          );
  }
}
