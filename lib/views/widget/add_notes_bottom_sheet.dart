import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_button-notes.dart';
import 'package:noteapp/views/widget/custom_text_filed.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextFiled(hint: 'Title'),
            SizedBox(height: 30),
            CustomTextFiled(hint: 'Content', maxLines: 5),
            SizedBox(height: 30),
            CustomButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
