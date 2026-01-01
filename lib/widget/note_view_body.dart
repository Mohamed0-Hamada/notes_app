import 'package:flutter/material.dart';
import 'package:folder/widget/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [
        
        SizedBox(height: 50),
         CustomAppBar(),
         
         ]),
    );
  }
}
