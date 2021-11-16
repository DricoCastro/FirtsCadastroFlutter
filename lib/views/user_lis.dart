import 'package:flutter/material.dart';
import 'package:myapp/data/dummy.users.dart';
import 'package:myapp/widgets/user_tile.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Usuários'), actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.person_add_rounded))
      ]),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
