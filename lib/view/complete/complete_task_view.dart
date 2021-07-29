import 'package:flutter/material.dart';
import 'package:to_do/core/shared/style/style.dart';
import 'package:to_do/core/shared/view/base_view.dart';
import 'package:to_do/core/widget/shared_appbar.dart';
import 'package:to_do/helper/ui_helper.dart';
import 'package:to_do/view/complete/complete_task_viewmodel.dart';

class CompleteTaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<CompleteTaskViewModel>(
      onViewModelReady: (viewModel) async {
        bool isSuccess = await viewModel.getTasks();

        print('Complete Task View load is $isSuccess');
      },
      builder: (context, viewModel, _) => Scaffold(
        appBar: SharedAppBar(title: 'Completed Tasks'),
        body: Container(
          margin: EdgeInsets.all(10),
          decoration: sharedBoxDecoration,
          child: ListView.separated(
            separatorBuilder: (_, __) => UIHelper.divider(),
            itemCount: viewModel.getTaskItems().length,
            itemBuilder: (context, index) {
              var item = viewModel.getTaskItems()[index];

              return ListTile(
                title: Text('${item.title}'),
                trailing: Checkbox(
                  value: item.status,
                  onChanged: (status) async =>
                      await viewModel.changeStatus(item.id, status),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
