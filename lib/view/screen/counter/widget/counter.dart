import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<MyCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(count.toString()),
          RaisedButton(
            child: Text('カウントアップ'),
            onPressed: () {
              setState(
                () {
                  count++;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
