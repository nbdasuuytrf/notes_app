import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/add_notes_bottom_sheet.dart';
import 'package:noteapp/views/widget/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const ShowModalBottomSheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViesBody(),
    );
  }
}
