import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folder/cubits/notes_cubit/notes_cubit.dart';
import 'package:folder/models/note_model.dart';
import 'package:folder/widget/custom_app_bar.dart';
import 'package:folder/widget/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            title: 'Edit Note',
          ),
          const SizedBox(height: 32),
          CustomTextFormField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
            maxLines: 1,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
