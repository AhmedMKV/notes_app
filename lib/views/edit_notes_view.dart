import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import '../cubits/notes_cubit/notes_cubit.dart';

class EditNotesView extends StatefulWidget {
   const EditNotesView({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
String ? title,subtitle ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: (){
                widget.note.title=title ?? widget.note.title;


                widget.note.subtitle = subtitle?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);

              },
              icon: Icon(Icons.check),
              text: 'Edit Note',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextFields(
              onChanged: (value){
                title = value;
              },
                hint: 'title'
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFields(
              onChanged: (value){
                subtitle= value;
              },
              hint: 'content',
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
