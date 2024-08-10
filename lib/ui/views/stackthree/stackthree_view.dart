import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stackthree_viewmodel.dart';

class StackthreeView extends StackedView<StackthreeViewModel> {
  const StackthreeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StackthreeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            viewModel.goBack();
          },
        ),
        title: const Text('Stacked View 3'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Welcome to Stacked View 3 page!!!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  StackthreeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StackthreeViewModel();
}
