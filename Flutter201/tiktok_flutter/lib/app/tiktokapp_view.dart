import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/tittokapp_viewmodel.dart';
import 'package:tiktok_flutter/constants/theme.dart';

class TiktokAppView extends StackedView<TiktokAppViewModel> {
  const TiktokAppView({super.key});

  @override
  Widget builder(
      BuildContext context, TiktokAppViewModel viewModel, Widget? child) {
    return MaterialApp(
        theme: ThemeConst.light,
        darkTheme: ThemeConst.dark,

        home: SafeArea(
          child: Scaffold(
            body: TextButton(
              onPressed: () {
                viewModel.changeText();
              },
              child: Text(viewModel.text),
            ),
          ),
        ));
  }

  @override
  TiktokAppViewModel viewModelBuilder(BuildContext context) =>
      TiktokAppViewModel();
}
