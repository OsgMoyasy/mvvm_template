import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム画面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('カウンター'),
              color: Colors.redAccent,
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('入力フォームのある画面'),
              color: Colors.greenAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
