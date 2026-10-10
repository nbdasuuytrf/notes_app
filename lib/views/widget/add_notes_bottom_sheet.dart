import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_button-notes.dart';
import 'package:noteapp/views/widget/custom_text_filed.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteFormState()),
    );
  }
}

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({super.key});

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },

            hint: 'Title',
          ),
          const SizedBox(height: 30),
          CustomTextFiled(hint: 'Content', maxLines: 5),
          const SizedBox(height: 30),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
