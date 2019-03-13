import 'package:flutter/material.dart';
import 'flow_layout_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: WrapDemo(),
    );
  }
}
