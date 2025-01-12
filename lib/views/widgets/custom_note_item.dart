import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'dart:math';

import '../../models/notes_model.dart';
import '../edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    required this.note,
    super.key,
  });
final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, EditNotesView.editId);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(note.title),
                  ),
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  subtitle: Text(
                      note.subtitle),
                  subtitleTextStyle:
                      TextStyle(color: Color(0xFF303030), fontSize: 14),
                  trailing: IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      },
                      icon: Icon(
                        Icons.delete,
                        size: 24,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    note.date,
                    style: TextStyle(color: Color(0xFF303030), fontSize: 12),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
