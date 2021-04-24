import 'package:card_horizontal_swipe/card_horizontal_swipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Default'),
        ),
        body: Center(
          child: Container(
            height: 100,
            color: Colors.grey[400],
            child: CircularListView.useDelegate(
              scrollDirection: Axis.horizontal,
              itemExtent: 80,
              magnification: 1.5,
              useMagnifier: true, 
              onSelectedItemChanged: _onItemSelectedChanged,
              childDelegate: ListWheelChildBuilderDelegate(
                  builder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  color:index%2==0? Colors.red:Colors.yellow,
                  child: Center(child: Text("Card $index")),
                  );
              }),
            ),
          ),
        ),
      ),
    );
  }

  void _onItemSelectedChanged(int value) {
    print("index : $value");
  }
}