import 'package:first_app/modal/category.dart';
import 'package:first_app/pages/drawer.dart';
import 'package:first_app/pages/home_detail.dart';
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
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/cartpage");
          },
          child: Icon(CupertinoIcons.cart)),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 208, 212, 212),
        elevation: 0.0,
        title: const Text(
          "Trending Product",
        ),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 60),
          child: (CatalogModal.items != null && CatalogModal.items!.isNotEmpty)
              ? ListView.builder(
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   mainAxisSpacing: 60,
                  //   crossAxisSpacing: 15,
                  // ),
                  itemBuilder: (context, index) {
                    Item item = CatalogModal.items![index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeDetail(item: item),
                            ));
                      },
                      child: ItemWidget(
                        item: item,
                      ),
                    );
                  },
                  itemCount: CatalogModal.items!.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      // drawer: SlideBar(),
    );
  }
}
