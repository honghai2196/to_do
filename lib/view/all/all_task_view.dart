import 'package:flutter/material.dart';
import 'package:to_do/core/shared/style/style.dart';
import 'package:to_do/core/shared/view/base_view.dart';
import 'package:to_do/core/widget/shared_appbar.dart';
import 'package:to_do/helper/ui_helper.dart';
import 'package:to_do/view/all/all_task_viewmodel.dart';

class AllTaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AllTaskViewModel>(
      onViewModelReady: (viewModel) async {
        bool isSuccess = await viewModel.getTasks();

        print('All Task View load is $isSuccess');
      },
      builder: (context, viewModel, _) => Scaffold(
        backgroundColor: Colors.white,
        appBar: SharedAppBar(title: 'All Tasks'),
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
