import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFields(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFields(
            onSaved: (value) {
              subtitle = value;
            },
            maxLines: 7,
            hint: 'content',
          ),
          SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: DateTime.now().toString());
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  buttonText: 'Add'
                      '');
            },
          ),
        ],
      ),
    );
  }
}
