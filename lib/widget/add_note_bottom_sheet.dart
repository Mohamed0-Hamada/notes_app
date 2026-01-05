import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folder/cubits/add_note_cuit/add_note_cubit.dart';
import 'package:folder/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
