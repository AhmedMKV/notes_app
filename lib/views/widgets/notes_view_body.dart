import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppBar(
              text: 'Notes',
              icon: Icon(Icons.search),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      );
  }
}
