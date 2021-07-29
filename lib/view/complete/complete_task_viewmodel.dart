import 'package:to_do/core/shared/enum/view_state_enum.dart';
import 'package:to_do/core/shared/view_model/base_view_model.dart';
import 'package:to_do/model/task.dart';
import 'package:to_do/view/complete/complete_task_model.dart';

class CompleteTaskViewModel extends BaseViewModel {
  var _model = CompleteTaskModel();
  List<Task> getTaskItem() => _model.tasks;

  Future<bool> getTasks() {
    setState(ViewState.Busy);

    return _model.getTasks().then((value) {
      setState(ViewState.Idle);
      return value;
    });
  }
}
