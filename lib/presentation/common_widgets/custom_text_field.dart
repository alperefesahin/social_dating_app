import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isRequiredField;
  final bool isEnabled;
  final String? error;
  final EdgeInsets padding;
  final int? maxLines;

  const CustomTextField({
    Key? key,
    this.hint = '',
    required this.onChanged,
    required this.keyboardType,
    required this.isEnabled,
    this.padding = const EdgeInsets.all(0),
    this.maxLines = 1,
    this.isPasswordField = false,
    this.isRequiredField = false,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    );
    /*  UnderlineInputBorder errorBorder =
        const UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 2));
         */
    return Padding(
      padding: padding,
      child: TextFormField(
        style: const TextStyle(color: whiteColor, fontWeight: FontWeight.w500),
        enabled: isEnabled,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintMaxLines: 5,
          fillColor: customIndigoBackgroundColor.withOpacity(0.6),
          contentPadding: EdgeInsets.only(left: 25, top: 5.h, right: 25),
          filled: true,
          hintText: isRequiredField ? '$hint*' : hint,
          hintStyle: const TextStyle(color: whiteColor, fontWeight: FontWeight.w500),
          border: border,
          disabledBorder: border,
          enabledBorder: border,
          /* errorBorder: errorBorder,
          focusedErrorBorder: errorBorder, */
          errorText: error,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        autocorrect: false,
        textInputAction: TextInputAction.done,
        obscureText: isPasswordField,
        onChanged: onChanged,
      ),
    );
  }
}
