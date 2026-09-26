import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/edit_view_body.dart';

class EditeNotesViews extends StatelessWidget {
  const EditeNotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody());
  }
}
