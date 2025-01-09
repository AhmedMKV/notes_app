import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp( NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNotesView.editId :(context)=> EditNotesView()
      },
      debugShowCheckedModeBanner: false,
theme: ThemeData(

  brightness: Brightness.dark
),
      home: NotesView(),
    );
  }
}

