import 'package:flutter/material.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/widgets/user_tile.dart';
import 'package:provider/provider.dart';
import 'package:myapp/provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Usuários'), actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.userForm);
          },
          icon: const Icon(Icons.person_add_rounded),
        ),
      ]),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
