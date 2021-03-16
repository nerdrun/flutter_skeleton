import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeleton/core/base_model.dart';
import 'package:skeleton/injector.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function onModelReady;

  BaseView({
    @required this.builder,
    this.onModelReady,
  });

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  T model = Injector<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) widget.onModelReady(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: model,
      child: Consumer(
        builder: widget.builder,
      ),
    );
  }
}