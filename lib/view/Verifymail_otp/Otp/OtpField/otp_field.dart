import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 46,
          height: 46,
          child: CustomTextField(
            borderRadius: 6,
            textAlign: TextAlign.center,
            textColor: Colors.black,
            hinText: '•',
            fillColor: const Color(0xFFF7FFEF),
            focusBorderColor: Colors.transparent,
            hintFontSize: 24,
            hintFontWeight: FontWeight.bold,
            keyboardType: TextInputType.number,
          ),
        ); 
      }),
    );
  }
}
