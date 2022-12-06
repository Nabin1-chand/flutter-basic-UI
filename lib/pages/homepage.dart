import 'package:first_app/modal/category.dart';
import 'package:first_app/pages/drawer.dart';
import 'package:first_app/pages/item_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: dummyList.length,
        itemBuilder: ((context, index) {
          return ItemWidget(item: dummyList[index]);
        }),
      ),
      drawer: SlideBar(),
    );
  }
}
