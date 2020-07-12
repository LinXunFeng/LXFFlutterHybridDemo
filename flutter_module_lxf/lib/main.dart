import 'package:flutter/material.dart';
import 'package:flutter_module_lxf/pages/count.dart';
import 'package:flutter_module_lxf/pages/other.dart';
import 'package:flutter_module_lxf/router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LXFRouter.initialRoute,
      routes: LXFRouter.routes,
//      home: LXFCountPage(),
    );
  }
}
