import 'package:to_do/core/shared/model/base_model.dart';
import 'package:to_do/model/task.dart';

class IncompleteTaskModel extends BaseModel {
  List<Task> tasks = [];

  Future<bool> getTasks() async {
    message = "";
    try {
      tasks = MockTask.mockTasks
          .where((element) => element.status == false)
          .toList();
      tasks.sort((a, b) => a.id <= b.id ? 0 : 1);
      return true;
    } catch (error) {
      handleError(error);
      return false;
    }
  }

  Future<bool> changeStatus(int id, bool status) async {
    message = "";
    try {
      MockTask.mockTasks.where((element) => element.id == id).first.status =
          status;
      tasks = MockTask.mockTasks
          .where((element) => element.status == false)
          .toList();
      tasks.sort((a, b) => a.id <= b.id ? 0 : 1);
      return true;
    } catch (error) {
      handleError(error);
      return false;
    }
  }
}
