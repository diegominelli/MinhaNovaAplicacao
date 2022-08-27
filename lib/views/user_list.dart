import 'package:flutter/material.dart';
import 'package:minhanovaaplicacao/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de usuários"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => Text(users.values.elementAt(i).nome),
      ),
    );
  }
}
