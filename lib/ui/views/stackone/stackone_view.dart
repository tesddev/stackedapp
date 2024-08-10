import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stackone_viewmodel.dart';

class StackoneView extends StackedView<StackoneViewModel> {
  const StackoneView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StackoneViewModel viewModel,
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
        title: const Text('Stacked View 1'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Welcome to Stacked View 1 page!!!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  StackoneViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StackoneViewModel();
}
