import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/nortes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViesBody(),
    );
  }
}
