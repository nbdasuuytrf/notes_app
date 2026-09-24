import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_text_filed.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 24), CustomTextFiled()]),
    );
  }
}
