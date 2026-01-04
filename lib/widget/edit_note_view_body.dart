import 'package:flutter/material.dart';
import 'package:folder/widget/custom_app_bar.dart';
import 'package:folder/widget/custom_text_form_field.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:const [
          SizedBox(height: 50),
          CustomAppBar(icon: Icons.check, title: 'Edit Note',),
          SizedBox(height: 32),
          CustomTextFormField(hintText: 'Title', maxLines: 1,),
          SizedBox(height: 16),
          CustomTextFormField(hintText: 'Content', maxLines: 5,),
        
        ],
      
      ),
    );
  }
}