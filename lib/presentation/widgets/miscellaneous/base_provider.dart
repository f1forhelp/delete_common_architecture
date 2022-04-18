import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_init.dart';

class BaseProvider<T extends StateStreamableSource<Object?>>
    extends StatefulWidget {
  final Function(T)? onStateReady;
  final Widget? child;
  const BaseProvider({Key? key, this.onStateReady, this.child})
      : super(key: key);
  @override
  _BaseProviderState<T> createState() => _BaseProviderState<T>();
}

class _BaseProviderState<T extends StateStreamableSource<Object?>>
    extends State<BaseProvider<T>> {
  T state = AppInit.getIt<T>();
  @override
  void initState() {
    if (widget.onStateReady != null) {
      widget.onStateReady!(state);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>.value(
      value: state,
      child: widget.child,
    );
  }
}
