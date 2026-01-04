import 'package:flutter/material.dart';
import 'package:folder/constants.dart';
import 'package:folder/widget/add_note_bottom_sheet.dart';
import 'package:folder/widget/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add , color: Colors.black,),
      ),
      body: const NoteViewBody(),
    );
  }
}
