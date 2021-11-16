import 'package:flutter/material.dart';
import 'package:myapp/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final avatar = (user.avatarUrl == null || user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person_sharp))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)));
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
            width: 100,
            child: Row(children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  color: Colors.green.shade400),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_rounded),
                  color: Colors.red.shade600)
            ])));
  }
}
