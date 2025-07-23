import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Page'),
      ),
      body: Center(
        child: Text('Welcome to the Privacy Page!'),
      ),
    );
  }
}