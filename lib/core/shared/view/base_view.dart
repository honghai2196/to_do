import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/core/locator.dart';
import 'package:to_do/core/shared/view_model/base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewModel, Widget? child)
      builder;
  final Function(T)? onViewModelReady;

  BaseView({required this.builder, this.onViewModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T viewModel = locator<T>();

  @override
  void initState() {
    if (widget.onViewModelReady != null) {
      widget.onViewModelReady!(viewModel);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (_) => viewModel,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
