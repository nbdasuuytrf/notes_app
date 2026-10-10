import 'package:flutter/material.dart';
import 'package:noteapp/constanse.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.hintStyle,
    this.onSaved,
  });
  final String hint;
  final int maxLines;
  final TextStyle? hintStyle;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return ' filed is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: TextStyle(color: kPrimaryColor),
        border: bulidBorder(),
        enabledBorder: bulidBorder((kPrimaryColor)),
        focusedBorder: bulidBorder(),
      ),
    );
  }

  OutlineInputBorder bulidBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
