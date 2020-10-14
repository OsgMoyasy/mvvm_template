import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view/screen/counter/widget/counter.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カウンター'),
      ),
      body: Center(
        child: MyCounter(),
      ),
    );
  }
}
