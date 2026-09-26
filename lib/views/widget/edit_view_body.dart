import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/coustom_app_bar.dart';
import 'package:noteapp/views/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CoustomAppbar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextFiled(hint: 'Titel'),
          SizedBox(height: 24),
          CustomTextFiled(hint: "Content", maxLines: 10,hintStyle: TextStyle(),),
        ],
      ),
    );
  }
}
