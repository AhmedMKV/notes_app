import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child:Column(

        children: [
          CustomAppBar(),
          SizedBox(height: 15,),
          CustomNoteItem()

        ],
      ),
    );
  }
}
