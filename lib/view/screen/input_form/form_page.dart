import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view/screen/input_form/widget/my_input_form.dart';
import 'package:flutter_mvvm_template/view_model/form_page_view_model.dart';
import 'package:provider/provider.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //今までのものをChangeNotifireProviderで囲む
    return ChangeNotifierProvider(
      create: (context){
        //streamのlistener設定等はここに書いていいのでは?(要検討)

        //FormPageViewModelを下位Widgetに伝える
        return FormPageViewModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('フォームのある画面'),
        ),
        body: Center(
          child: MyInputForm(),
        ),
      ),
    );
  }
}
