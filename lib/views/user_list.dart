import 'package:flutter/material.dart';
import 'package:minhanovaaplicacao/components/user_tile.dart';
import 'package:minhanovaaplicacao/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de usuários"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(
          users.values.elementAt(i),
        ),
      ),
    );
  }
}
