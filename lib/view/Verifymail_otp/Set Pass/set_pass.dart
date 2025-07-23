import 'package:flutter/material.dart';

class SetPassWord extends StatefulWidget {
  const SetPassWord({super.key});

  @override
  State<SetPassWord> createState() => _SetPassState();
}
class _SetPassState extends State<SetPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Password'),
      ),
      body: Center(
        child: Text('Welcome to the Set Password Page!'),
      ),
    );
  }
}