import 'package:flutter/material.dart';
import 'package:noteapp/constanse_color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxLines = 1,this.hintStyle});
  final String hint;
  final int maxLines;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
