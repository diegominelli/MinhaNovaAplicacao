import 'package:flutter/material.dart';
import 'package:minhanovaaplicacao/provider/user.dart';
import 'package:minhanovaaplicacao/routes/app_routes.dart';
import 'package:minhanovaaplicacao/views/user_form.dart';
import 'package:minhanovaaplicacao/views/user_list.dart';
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
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME: (_) => const UserList(),
          AppRoutes.USER_FORM: (_) => const UserForm()
        },
      ),
    );
  }
}
