import 'package:to_do/core/shared/enum/view_state_enum.dart';
import 'package:to_do/core/shared/view_model/base_view_model.dart';
import 'package:to_do/model/task.dart';
import 'package:to_do/view/all/all_task_model.dart';

class AllTaskViewModel extends BaseViewModel {
  var _model = AllTaskModel();
  List<Task> getTaskItem() => _model.tasks;

  Future<bool> getTasks() {
    setState(ViewState.Busy);

    return _model.getTasks().then((value) {
      setState(ViewState.Idle);
      return value;
    });
  }
}