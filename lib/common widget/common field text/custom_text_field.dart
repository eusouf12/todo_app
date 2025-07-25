import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  static void _defaultOnTap() {}

  const CustomTextField({
    super.key,
    this.height,
    this.borderRadius = 6,
    this.focusNode,
    this.suffixIcon,
    this.suffixIconColor = Colors.grey,
    this.prefixIcon,
    this.textColor = Colors.grey,
    this.hinText,
    this.hintFontSize = 16,
    this.hintFontWeight = FontWeight.w400,
    this.labelText,
    this.textAlign = TextAlign.start,
    this.focusBorderColor,
    this.fillColor = const Color(0xFFF7FFEF),
    this.borderColor,
    this.cursorColor = Colors.grey,
    this.readOnly = false,
    this.maxLings = 1,
    this.minLines,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.showObscure = false,
    this.textEditingController,
    this.textAlignVertical = TextAlignVertical.center,
    this.isPassword = false,
    this.isTextColor = false,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.onChanged,
    this.formFieldValidator,
    this.onTapClick = _defaultOnTap,
    this.elevation = 0,
    this.contentPadding = const EdgeInsets.only(left: 6),
    this.shadowColor = const Color.fromARGB(255, 214, 211, 211),
  });

  final double? height;
  final double borderRadius;
  final bool showObscure;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? hinText;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final String? labelText;
  final Color? textColor;
  final Color? focusBorderColor;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Color? borderColor;
  final Color cursorColor;
  final int? maxLings;
  final int? minLines;
  final int? maxLength;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final FormFieldValidator? formFieldValidator;
  final bool isPassword;
  final bool readOnly;
  final bool isTextColor;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final VoidCallback onTapClick;
  final double elevation;
  final Color shadowColor;
  final EdgeInsetsGeometry contentPadding;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obsText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor,
            offset: Offset(1, 1),
            blurRadius: 16,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Material(
        elevation: widget.elevation,
        shadowColor: widget.shadowColor,
        child: TextFormField(
          maxLines: widget.maxLings,
          maxLength: widget.maxLength,
          controller: widget.textEditingController,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          textAlign: widget.textAlign,
          textAlignVertical: widget.textAlignVertical,
          readOnly: widget.readOnly,
          obscureText: widget.showObscure ? obsText : false,
          cursorColor: widget.cursorColor,
          focusNode: widget.focusNode,
          onChanged: widget.onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.formFieldValidator,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: widget.hinText,
            hintStyle: TextStyle(
              color: widget.textColor,
              fontWeight: widget.hintFontWeight,
              fontSize: widget.hintFontSize,
            ),
            filled: true,
            fillColor: widget.fillColor,
            contentPadding: widget.contentPadding,

            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    child: Icon(
                      widget.prefixIcon,
                      color: widget.suffixIconColor,
                    ),
                  )
                : null,

            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        obsText = !obsText;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      child: Icon(
                        obsText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: widget.suffixIconColor,
                      ),
                    ),
                  )
                : (widget.suffixIcon != null
                      ? Icon(widget.suffixIcon, color: widget.suffixIconColor)
                      : null),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: widget.borderColor ?? Colors.grey,
                width: 1,
              ),
              gapPadding: 0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: widget.focusBorderColor ?? Colors.grey,
                width: 1,
              ),
              gapPadding: 0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide.none,
              gapPadding: 0,
            ),
          ),
        ),
      ),
    );
  }
}
