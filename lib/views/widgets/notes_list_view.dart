import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
          return ListView.separated(
              itemCount:notes.length ,
              itemBuilder: (context, index) {
                return CustomNoteItem(note: notes[index],);
              },
              separatorBuilder: (context, index) =>
                  SizedBox(
                    height: 10,
                  ));
        },
      );
  }
}
