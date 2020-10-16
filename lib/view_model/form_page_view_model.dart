import 'package:flutter/cupertino.dart';

class FormPageViewModel extends ChangeNotifier {
  final formController = TextEditingController();
  String outputString = '';

  //コンストラクタ
  //初期値設定等にはclassと同名のメソッドを使用する
  FormPageViewModel() {}

  //破棄の処理
  @override
  void dispose() {
    //controllerの破棄等はここに書く
    formController.dispose();
    super.dispose();
  }

  //確定ボタンを押したときの処理
  onPressSetStringButton() {
    outputString = formController.text;

    //outputStringの変更を通知
    notifyListeners();
  }
}
