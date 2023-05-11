import 'package:flutter/cupertino.dart';

abstract class SafeState<T extends StatefulWidget> extends State {
  @override
  T get widget => super.widget as T;

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
