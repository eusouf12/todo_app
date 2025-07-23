import 'package:flutter/material.dart';

 class MyClass extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('My Profile'),
       ),
       body: Center(
         child: Text('Welcome to My Profile Page!'),
       ),
     );
   }
 }