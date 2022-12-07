import 'package:first_app/modal/category.dart';
import 'package:first_app/pages/drawer.dart';
import 'package:first_app/pages/item_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Map<String, dynamic>> mapdata = [
    {"id": 1, "name": "Nabin"}
  ];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // List<dynamic>? data;

  loadData() async {
    // data = mapdata.map(((data) => data)).toList();
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("files/catalog.json");
    // print(catalogJson);
    final decodeData = jsonDecode(catalogJson);
    // print(decodeData);
    var productData = decodeData["products"];
    CatalogModal.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    // print(productData);
    setState(() {});
  }

  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (CatalogModal.items != null && CatalogModal.items!.isNotEmpty)
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: CatalogModal.items!.length,
                  itemBuilder: ((context, index) {
                    return ItemWidget(item: CatalogModal.items![index]);
                  }),
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: SlideBar(),
    );
  }
}
