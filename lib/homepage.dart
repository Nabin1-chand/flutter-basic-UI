import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> items = ["items1", "items2", "items3"];
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text("item 1"),
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text("item 2"))),
                Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text("item 3"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text("item 1"),
                  ),
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text("item 2"))),
                Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text("item 3"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {}),
            ListTile(
              title: const Text('Contact Us',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

//itemcount= array ko length  builder = index return wideget  Card, 
//delegate = 
// Card(item[index])