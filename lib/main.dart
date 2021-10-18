import 'package:flutter/material.dart';
import 'package:inheritedwidget_context/my_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("107. InheritedWidget and Context"),
      ),
      body: Center(
        child: MyColor(
          color: Colors.amber,
          child: Builder(
            builder: (BuildContext innerContext) {
              return Text(
                "My Text",
                style: TextStyle(
                    fontSize: 35, backgroundColor: MyColor.of(innerContext).color),
              );
            }
          ),
        ),
      ),
    );
  }
}
