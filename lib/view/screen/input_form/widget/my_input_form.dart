import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view_model/form_page_view_model.dart';
import 'package:provider/provider.dart';

class MyInputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Selector<FormPageViewModel, String>(
            selector: (context, viewModel) => viewModel.outputString,
            builder: (context, outputString, child) {
              return Text(outputString);
            },
          ),
          TextField(
            controller: context.watch<FormPageViewModel>().formController,
            decoration: InputDecoration(
              hintText: '何か入力して確定ボタンを押してください',
            ),
          ),
          RaisedButton(
            child: Text('確定'),
            onPressed: () {
              context.read<FormPageViewModel>().onPressSetStringButton();
            },
          ),
        ],
      ),
    );
  }
}
