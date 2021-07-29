import 'package:get_it/get_it.dart';
import 'package:to_do/view/all/all_task_viewmodel.dart';
import 'package:to_do/view/complete/complete_task_viewmodel.dart';
import 'package:to_do/view/incomplete/incomplete_task_viewmodel.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerFactory(() => AllTaskViewModel());
  locator.registerFactory(() => CompleteTaskViewModel());
  locator.registerFactory(() => IncompleteTaskViewModel());
}
