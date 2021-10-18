import 'package:flutter/material.dart';

class MyColor extends InheritedWidget {
  const MyColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);
  final Color color;

  static MyColor of(BuildContext context) {
    final MyColor? result =
        context.dependOnInheritedWidgetOfExactType<MyColor>();
    assert(result != null, 'No MyColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant MyColor oldWidget)  => color != oldWidget.color;
}
