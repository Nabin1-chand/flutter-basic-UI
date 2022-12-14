import 'package:first_app/modal/category.dart';
import "package:flutter/material.dart";

class HomeDetail extends StatelessWidget {
  final Item item;
  HomeDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 208, 212, 212),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Hero(
                  tag: Key(item.id.toString()),
                  child: Image.network(
                    item.image,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    item.desc,
                  ),
                ),
                SizedBox(height: 30),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.all(25.0),
                  children: [
                    Text(
                      "\$${item.price}",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 50, 65, 47)),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 18),
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
