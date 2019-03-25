import 'package:flutter/material.dart';

import 'page.dart';

class MyFishApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Redux Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CountPage().buildPage(<String, dynamic>{}),
      );
}

void main() => runApp(MyFishApp());
