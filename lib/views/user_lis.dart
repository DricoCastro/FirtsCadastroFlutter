import 'package:flutter/material.dart';
import 'package:myapp/data/dummy.users.dart';
import 'package:myapp/widgets/user_tile.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Usuários'), actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.person_add_rounded))
      ]),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
