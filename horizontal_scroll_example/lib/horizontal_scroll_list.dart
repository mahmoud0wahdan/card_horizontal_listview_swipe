import 'package:card_horizontal_swipe/card_horizontal_swipe.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_scroll_example/colored_container.dart';

class HorizontalScrollList extends StatelessWidget {
  const HorizontalScrollList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('Default'),
        ),
        body: Center(
          child: Container(
            height: 150,
            color: Colors.grey[400],
            child: CircularListView(
              scrollDirection: Axis.horizontal,
              itemExtent: 80,
              magnification: 1.5,
              useMagnifier: true,
              children: [
                ColoredContainer(Colors.red),
                ColoredContainer(Colors.yellow),
                ColoredContainer(Colors.green),
                ColoredContainer(Colors.red),
                ColoredContainer(Colors.yellow),
                ColoredContainer(Colors.green),
                ColoredContainer(Colors.red),
                ColoredContainer(Colors.yellow),
                ColoredContainer(Colors.green),
              ],
            ),
          ),
        ),
      ),
    );
  }
}