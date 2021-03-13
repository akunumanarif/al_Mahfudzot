import 'package:flutter/material.dart';

class DBBawah extends StatelessWidget {
  final tabs = [
    "Explore",
    "Best Seller",
    "Newest",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Container(
        height: 300,
        width: 300,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.greenAccent,
              tabs: [
                Tab(
                  text: 'About Game',
                ),
                Tab(
                  text: 'Game',
                ),
                Tab(
                  text: 'Description',
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 300,
                child: TabBarView(
                    //dragStartBehavior: DragStartBehavior.start,
                    children: [
                      Center(
                        child: Text('It\'s cloudy here'),
                      ),
                      Center(
                        child: Text('It\'s rainy here'),
                      ),
                      Center(
                        child: Text('It\'s sunny here'),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
