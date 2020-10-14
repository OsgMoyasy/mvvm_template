import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInputForm extends StatefulWidget {
  @override
  _MyInputFormState createState() => _MyInputFormState();
}

class _MyInputFormState extends State<MyInputForm> {
  final formController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(formController.text),
          TextField(
            controller: formController,
            decoration: InputDecoration(
              hintText: '何か入力して確定ボタンを押してください',
            ),
          ),
          RaisedButton(
            child: Text('確定'),
            onPressed: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
