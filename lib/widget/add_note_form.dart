import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folder/cubits/add_note_cuit/add_note_cubit.dart';
import 'package:folder/models/note_model.dart';
import 'package:folder/widget/custom_button.dart';
import 'package:folder/widget/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
String? title, content;
AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,

      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: content!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
