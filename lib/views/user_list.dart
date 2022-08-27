import 'package:flutter/material.dart';
import 'package:minhanovaaplicacao/components/user_tile.dart';
import 'package:minhanovaaplicacao/provider/user.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de usuários"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(
          users.byIndex(i),
        ),
      ),
    );
  }
}
