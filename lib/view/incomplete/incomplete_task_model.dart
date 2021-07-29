import 'package:to_do/core/shared/model/base_model.dart';
import 'package:to_do/model/task.dart';

class IncompleteTaskModel extends BaseModel {
  List<Task> tasks = [];

  Future<bool> getTasks() async {
    message = "";
    try {
      return true;
    } catch (error) {
      handleError(error);
      return false;
    }
  }
}
