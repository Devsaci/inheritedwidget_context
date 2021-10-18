import 'package:flutter/material.dart';

class MyColor extends InheritedWidget{
  final Color color;
  final Widget child;

  MyColor(this.color, this.child, {Key? key}) : super(key: key, child: Center());
  @override
  bool updateShouldNotify(covariant MyColor oldWidget) {
    // throw UnimplementedError();
    return color != oldWidget.color;
  }

  static MyColor of(context) => context.inheritFromWodgetOfExactType(MyColor);
}