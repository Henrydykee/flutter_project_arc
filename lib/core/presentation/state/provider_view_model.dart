import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewModelProvider<T extends ChangeNotifier> extends StatefulWidget {
  final T viewModel;
  final Widget Function(BuildContext context, T value, Widget child) builder;
  final Function(T)? onModelReady;

  ViewModelProvider({super.key,
    required this.viewModel,
    required this.builder,
    this.onModelReady,
  });

  @override
  _ViewModelProviderState<T> createState() => _ViewModelProviderState<T>();
}

class _ViewModelProviderState<T extends ChangeNotifier>
    extends State<ViewModelProvider<T>> {
  late T model;

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(builder: (_, builder, widget) {
        return widget ?? const SizedBox();
    },
    ));
  }
}
