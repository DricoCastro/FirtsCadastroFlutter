import 'package:flutter/material.dart';
import 'package:myapp/provider/users.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/views/user_form.dart';
import 'package:myapp/views/user_lis.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UsersProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutte Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        routes: {
          AppRoutes.home: (_) => const UserList(),
          AppRoutes.userForm: (_) => UserForm(),
        },
      ),
    );
  }
}
