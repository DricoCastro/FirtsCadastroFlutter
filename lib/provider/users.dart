import 'package:flutter/material.dart';
import 'package:myapp/data/dummy.users.dart';
import 'package:myapp/models/user.dart';

class UsersProvider with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};
  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
