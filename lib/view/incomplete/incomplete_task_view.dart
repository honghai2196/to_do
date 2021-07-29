import 'package:flutter/material.dart';
import 'package:to_do/core/shared/view/base_view.dart';
import 'package:to_do/core/widget/shared_appbar.dart';

class IncompleteTaskView extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return BaseView(
  //     onViewModelReady: (viewModel) async {},
  //     builder: (context, viewModel, _) => Scaffold(
  //       appBar: SharedAppBar(
  //         title: 'Incomplete Tasks',
  //       ),
  //       body: Container(
  //         color: Colors.white,
  //         child: Center(
  //           child: Text('Hello world'),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Incomplete Tasks',
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
