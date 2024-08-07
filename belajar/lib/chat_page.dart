// ignore_for_file: use_key_in_widget_constructors, use_super_parameters, library_private_types_in_public_api, unnecessary_string_interpolations, prefer_is_empty

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'users.dart';

const List<User> users = <User>[
  User('Jack', Colors.greenAccent),
  User('Lucy', Colors.green),
  User('Luna', Colors.black26),
  User('Oliver', Colors.blue),
  User('Lily', Colors.amberAccent),
  User('Milo', Colors.purple),
  User('Max', Colors.pink),
  User('Kitty', Colors.yellowAccent),
  User('Simba', Colors.red),
  User('Zoe', Colors.blueAccent),
  User('Jasper', Colors.deepOrange),
  User('Stella', Colors.cyan),
  User('Lola', Colors.lightBlue),
  User('Halsey', Colors.deepPurpleAccent),
  User('Taylor', Colors.indigoAccent),
];

class UserTile extends StatelessWidget {
  final User _product;

  const UserTile(
    this._product,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: _product.backgroundColor,
            radius: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _product.name,
                style: const TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CupertinoChatPage extends StatefulWidget {
  const CupertinoChatPage({Key? key}) : super(key: key);

  @override
  _CupertinoChatPageState createState() => _CupertinoChatPageState();
}

class _CupertinoChatPageState extends State<CupertinoChatPage> {
  List<User> _filteredUsers = users;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateUserList(String value) {
    debugPrint('$value');

    if (value.length > 0) {
      _filteredUsers = _filteredUsers
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    } else {
      _controller.text = '';
      _filteredUsers = users;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Users'),
          leading: Text(
            'Edit',
            style: TextStyle(color: CupertinoColors.link),
          ),
          middle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoActivityIndicator(),
              SizedBox(width: 8),
              Text('Waiting for network')
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: ClipRect(
                child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: CupertinoSearchTextField(
                controller: _controller,
                onChanged: (value) {
                  _updateUserList(value);
                },
                onSubmitted: (value) {
                  _updateUserList(value);
                },
                onSuffixTap: () {
                  _updateUserList('');
                },
              ),
            )),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 5,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return UserTile(_filteredUsers[index]);
            },
            childCount: _filteredUsers.length,
          ),
        ),
      ],
    );
  }
}
