import 'package:first_app/modal/cart.dart';
import 'package:first_app/modal/category.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemWidget extends StatefulWidget {
  final Item item;
  ItemWidget({super.key, required this.item});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  final _cart = Cart();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Hero(
              tag: Key(widget.item.id.toString()),
              child: Image.network(
                widget.item.image,
                height: 100,
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.item.name),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    Text("\$${widget.item.price}"),
                    ElevatedButton(
                        onPressed: () {
                          _cart.add(widget.item);
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 50, 65, 47)),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(fontSize: 10),
                        ))
                  ],
                )
              ],
            )),
          ],
        ));
  }
}
