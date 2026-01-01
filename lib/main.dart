import 'package:flutter/material.dart';
import 'package:folder/views/home_page.dart';

void main() {}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
