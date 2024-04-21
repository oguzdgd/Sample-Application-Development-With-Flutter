import 'package:flutter/material.dart';

class ThemeConst {
  // LIGHT THEME
  // static anahtar kelimesi ile işaretlenen üyeler sınıfa özgü değil,
  // sınıfa bağlıdır. Dolayısıyla, bu üyelere sınıf adı üzerinden doğrudan erişilebilir.
  static ThemeData light = ThemeData(
    brightness: Brightness.light,// textlerin rengini otomatik siyahtan beyaza değiştiriyor.
    primaryColor: Colors.white, // Arkaplan rengi

    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue, // AppBar arka plan rengi
      foregroundColor: Colors.white, // AppBar metin rengi
    ),


  );

  // DARK THEME
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme:  AppBarTheme(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
    ),

  );
}
