import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{

static void _defaultOnTap() {}

  const CustomTextField({
    super.key,
    this.height = 44,
    this.borderRadius = 6,
    this.focusNode,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.textColor,
    this.hinText ,
    this.labelText ,
    this.textAlign = TextAlign.start,
    this.focusBorderColor,
    this.fillColor = const Color(0xFFF7FFEF),
    this.borderColor,
    this.cursorColor = Colors.grey,
    this.readOnly = false,
    this.maxLings =1,
    this.maxLength,
    this.keyboardType= TextInputType.text,
    this.showObscure =false,
    this.textEditingController,
    this.textAlignVertical = TextAlignVertical.center,
    this.isPassword = false,
    this.isTextColor = false,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted ,
    this.onChanged,
    this.formFieldValidator,
    this.onTapClick = _defaultOnTap,
    this.elevation=0,
    this.shadowColor = const Color.fromARGB(255, 214, 211, 211),
  });


 final double height;
 final double borderRadius;
 final bool showObscure;
 final Widget? suffixIcon;
 final IconData? prefixIcon;
 final String? hinText ;
 final String? labelText ;
 final Color? textColor;
 final Color? focusBorderColor;
 final Color? fillColor;
 final Color? suffixIconColor;
 final Color? borderColor;
 final Color  cursorColor;
 final int? maxLings;
 final int? maxLength;
 final TextAlign textAlign;
 final TextAlignVertical? textAlignVertical;
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


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obsText =true;

    @override
    Widget build(BuildContext context) {
      return  Container(
           height: widget.height,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: widget.shadowColor,   // Color(0x1A000000)
          offset: Offset(1, 1),
          blurRadius: 24,
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
            textAlign: TextAlign.start,
            readOnly: widget.readOnly ,
            obscureText: widget.showObscure?obsText:false,
            cursorColor: widget.cursorColor,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.formFieldValidator,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(

              hintText: widget.hinText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor:widget.fillColor,

              prefixIcon: widget.prefixIcon != null ? Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16, vertical: 14
                ),
                child:Icon(widget.prefixIcon, color: Colors.black26),
              ) : null,

              suffixIcon: widget.isPassword
                  ? GestureDetector(
                  onTap: () {
                    setState(() {
                      obsText = !obsText;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 16, vertical: 14),
                    child: obsText
                        ?   Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    )
                        :   Icon(Icons.visibility_outlined,
                        color: Colors.grey),
                  ))
                  : widget.suffixIcon,
              suffixIconColor: widget.suffixIconColor,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                    color: widget.borderColor ?? Colors.grey, width: 1),
                    gapPadding: 0
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide:
                  BorderSide(color: widget.focusBorderColor ??Colors.grey,width:1),
                  gapPadding: 0
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide:
                    BorderSide.none,
                  gapPadding: 0
                ),
              )

            ),

          ),
      
        );
    }
  }




