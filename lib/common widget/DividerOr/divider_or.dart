import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({super.key});

  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xFF6B7280),
            thickness: 1,
          ),),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'OR',
            style: TextStyle(
              color: Color(0xFF0A0E23),
              fontWeight: FontWeight.w600,
      
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Color(0xFF6B7280),
            thickness: 1,
          ),),
      ],
    );
  }
}

    
