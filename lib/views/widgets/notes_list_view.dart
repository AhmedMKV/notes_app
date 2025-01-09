import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(


        itemCount: 10,
        itemBuilder: (context , index){
          return CustomNoteItem();
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 10,)
    );
  }
}
