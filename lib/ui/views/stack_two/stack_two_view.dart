import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stack_two_viewmodel.dart';

class StackTwoView extends StackedView<StackTwoViewModel> {
  const StackTwoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StackTwoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            viewModel.navigateBackWithData();
          },
        ),
        title: const Text('Stacked View 2'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Welcome to Stacked View 2 page!!!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  StackTwoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StackTwoViewModel();
}
