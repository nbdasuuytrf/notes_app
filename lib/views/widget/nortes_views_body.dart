import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/coustom_app_bar.dart';

class NotesViesBody extends StatelessWidget {
  const NotesViesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
      child: const Column(children: [SizedBox(height: 16), CoustomAppbar()]),
    );
  }
}
