import 'package:flutter/material.dart';
import 'package:noteapp/constanse_color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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
