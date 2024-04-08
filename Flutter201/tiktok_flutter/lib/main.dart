import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter/app/tiktokapp_view.dart';
import 'package:tiktok_flutter/di/locator.dart';

Future<void> main() async {
  // When widget load in the app,starts app
  // Widgetler uygulamada hazır olduğunda uygulamayı çalıştır.
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();

  // if users want to view horizontal mode, this is not allowed.
  // Bu kod parçası ekranın yalnızca dikey modda görünmesini sağlar.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TiktokAppView());
}

