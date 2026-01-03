import 'package:flutter/material.dart';
import 'package:folder/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomTextField(hintText: 'Title')]);
  }
}
