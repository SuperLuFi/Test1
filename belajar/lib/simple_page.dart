// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';

class CupertinoSimpleHomePage extends StatefulWidget {
  const CupertinoSimpleHomePage({Key? key}) : super(key: key);

  @override
  _CupertinoSimpleHomePageState createState() =>
      _CupertinoSimpleHomePageState();
}

class _CupertinoSimpleHomePageState extends State<CupertinoSimpleHomePage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Chat App'),
      ),
      child: Center(
        child: Text('Hi'),
      ),
    );
  }
}
