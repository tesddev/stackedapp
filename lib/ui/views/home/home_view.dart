import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapp/ui/common/app_colors.dart';
import 'package:stackedapp/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  final int startingIndex;
  const HomeView({Key? key, required this.startingIndex}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Hello, STACKED!',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    Row(
                      children: [
                        MaterialButton(
                          color: Colors.black,
                          onPressed: viewModel.incrementCounter,
                          child: Text(
                            viewModel.counterLabel,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: viewModel.moveToFirstScreen,
                      child: _buildListTile(
                        "Spare Part",
                        "Today 1:35pm",
                        "+₦4500",
                      ),
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: viewModel.moveToSecondScreen,
                      child: _buildListTile(
                        "Spare Part",
                        "Today 1:35pm",
                        "+₦4500",
                      ),
                    ),
                     MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: viewModel.moveToThirdScreen,
                      child: _buildListTile(
                        "Spare Part",
                        "Today 1:35pm",
                        "+₦4500",
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: kcDarkGreyColor,
                      onPressed: viewModel.showDialog,
                      child: const Text(
                        'Show Dialog',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      color: kcDarkGreyColor,
                      onPressed: viewModel.showBottomSheet,
                      child: const Text(
                        'Show Bottom Sheet',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile _buildListTile(String title, String subtitle, String trailing) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0.0, right: 8.0),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        trailing,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel(startingIndex: startingIndex);
}
