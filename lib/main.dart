import 'package:flutter/material.dart';

import 'features/themes/themes.dart';
import 'router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
