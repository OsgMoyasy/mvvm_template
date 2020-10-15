import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;

  //コンストラクタ
  //初期値設定等にはclassと同名のメソッドを使用する
  CounterViewModel() {}

  //破棄の処理
  @override
  void dispose() {
    //controllerの破棄等はここに書く

    super.dispose();
  }


  //カウントアップするボタンを押したときの処理
  onPressCountUpButton() {
    counter++;

    //counterの変更を通知
    notifyListeners();
  }
}
