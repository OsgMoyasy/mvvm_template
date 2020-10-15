import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

//StatelessWidgetに変更
class MyCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Selectorで囲む
          Selector<CounterViewModel, int>(
            //selectorにはviewModelのどのメンバが変更されたときに更新するのかを書く
            selector: (context, viewModel) => viewModel.counter,

            //builderはchildみたいなもの
            builder: (context, counter, child) {
              return Text(counter.toString());
            },
          ),
          RaisedButton(
            child: Text('カウントアップ'),
            onPressed: () {
              // viewModelに定義したメソッドはこうやって呼び出す
              // context.write<T>.hogeみたいな呼び出しもある(使い分けは後日wikiに書きます)
              context.read<CounterViewModel>().onPressCountUpButton();
            },
          ),
        ],
      ),
    );
  }
}
