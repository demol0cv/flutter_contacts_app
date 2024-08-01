import 'package:flutter/material.dart';
import 'package:my_todo_app/features/themes/theme_default.dart';
import 'package:my_todo_app/router/router.dart';

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myAppTheme,
      // home: const AllContactsScreen(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}
