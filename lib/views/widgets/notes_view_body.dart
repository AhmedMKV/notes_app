import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
