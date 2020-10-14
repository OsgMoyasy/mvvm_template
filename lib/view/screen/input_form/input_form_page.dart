import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view/screen/input_form/widget/my_input_form.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カウンター'),
      ),
      body: Center(
        child: MyInputForm(),
      ),
    );
  }
}
