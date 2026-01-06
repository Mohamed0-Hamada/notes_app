import 'package:flutter/material.dart';
import 'package:folder/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved, this.onChanged,
  });
  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: builderBorder(),
        enabledBorder: builderBorder(),
        focusedBorder: builderBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder builderBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
