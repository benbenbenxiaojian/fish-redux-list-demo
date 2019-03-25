import 'package:flutter/material.dart';

import 'list_demo/page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Redux Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CountPage().buildPage(<String, dynamic>{}),
      );
}

void main() => runApp(MyApp());
