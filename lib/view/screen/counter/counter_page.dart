import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view/screen/counter/widget/counter.dart';
import 'package:flutter_mvvm_template/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //今までのものをChangeNotifireProviderで囲む
    return ChangeNotifierProvider(

      create: (context){
        //streamのlistener設定等はここに書いていいのでは?(要検討)

        //CounterViewModelを下位Widgetに伝える
        return CounterViewModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('カウンター'),
        ),
        body: Center(
          child: MyCounter(),
        ),
      ),
    );
  }
}
