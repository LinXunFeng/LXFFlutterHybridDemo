import 'package:flutter/material.dart';

class LXFOtherPage extends StatelessWidget {

  static final String routeName = "/other";

  @override
  Widget build(BuildContext context) {

    final descStr = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      body: Center(
        child: Text("other page -- $descStr"),
      ),
    );
  }
}
