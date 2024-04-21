import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/tittokapp_viewmodel.dart';
import 'package:tiktok_flutter/constants/theme.dart';

class TiktokAppView extends StackedView<TiktokAppViewModel> {
  const TiktokAppView({super.key});

  @override
  // stacked is used
  Widget builder(
      BuildContext context, TiktokAppViewModel viewModel, Widget? child) {
    return MaterialApp(
        theme: ThemeConst.light,
        darkTheme: ThemeConst.dark,
        themeMode: viewModel.theme,
        home:  SafeArea(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      viewModel.changeTheme();
                    },
                    icon: viewModel.theme == ThemeMode.light ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
                )
              ],
            ),
            body: Center(
              child: Text("DENEME"),
            ),
          ),
        ));
  }

  // Using Stacked package
  @override
  TiktokAppViewModel viewModelBuilder(BuildContext context) =>
      TiktokAppViewModel();
}
