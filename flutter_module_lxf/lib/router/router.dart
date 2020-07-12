import 'package:flutter/material.dart';
import 'package:flutter_module_lxf/pages/count.dart';
import 'package:flutter_module_lxf/pages/other.dart';

class LXFRouter {
  static String initialRoute = LXFCountPage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    LXFCountPage.routeName: (ctx) => LXFCountPage(),
    LXFOtherPage.routeName: (ctx) => LXFOtherPage(),
  };
}
