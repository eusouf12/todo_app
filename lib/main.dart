import 'package:flutter/material.dart';
import 'package:my_task/view/Login/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",

      initialRoute: '/',

      routes: {
        '/': (context) => const Login(),
      },
    );
  }
}
