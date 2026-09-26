import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custom_search_icon.dart';

class CoustomAppbar extends StatelessWidget {
  const CoustomAppbar({super.key, required this.title,required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(icon:icon),
      ],
    );
  }
}
