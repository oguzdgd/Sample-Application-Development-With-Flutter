import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TiktokAppViewModel extends BaseViewModel {
  ThemeMode theme = ThemeMode.dark;
    /*String _text = "Merhaba";
    String  get text => _text;
    void changeText(){
      _text = "Dünya";
      rebuildUi();
  }*/
  changeTheme(){
    if(theme==ThemeMode.dark){
      theme=ThemeMode.light;
    }else{
      theme=ThemeMode.dark;
    }
    rebuildUi(); // videoda notifyListeners() kullanılıyor.
  }
}