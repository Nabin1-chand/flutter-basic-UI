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
  int counter = 0;

  bool shotext = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(child: cardWidget()),
    );
  }

  Widget buildOverflowingRow() {
    // #docregion overflowing-row

    return ListTile(
      visualDensity: VisualDensity(vertical: 4),
      leading: Image.network(
        widget.item.image,
      ),
      title: Text(widget.item.name),
      subtitle: Text(widget.item.desc),
      trailing: Container(
        height: 80,
        child: Column(
          children: [
            Text(widget.item.price.toString()),
            SizedBox(height: 10),
            SizedBox(
              width: 85.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    print("clicked");
                  });
                },
                child: Text('Add To Cart', style: TextStyle(fontSize: 10)),
              ),
            ),
            Text("$counter item added")
          ],
        ),
      ),
    );
  }

  Widget cardWidget() {
    return Container(
      height: 100,
      child: Card(
        child: buildOverflowingRow(),
      ),
    );
  }

  Widget text() {
    return Text("");
  }
}
