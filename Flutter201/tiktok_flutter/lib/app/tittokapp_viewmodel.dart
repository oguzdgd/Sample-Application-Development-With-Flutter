import 'package:stacked/stacked.dart';

class TiktokAppViewModel extends BaseViewModel {
  String _text = "Merhaba";
  String  get text => _text;
  void changeText(){
    _text = "Dünya";
    rebuildUi();
}
}