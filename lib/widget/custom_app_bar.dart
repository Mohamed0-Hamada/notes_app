import 'package:flutter/material.dart';
import 'package:folder/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
