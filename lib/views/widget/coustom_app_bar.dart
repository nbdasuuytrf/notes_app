import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_search_icon.dart';

class CoustomAppbar extends StatelessWidget {
  const CoustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      
        Text(
          'Notes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
