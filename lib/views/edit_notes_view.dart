import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
static String editId = 'EditView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppBar(
              icon: Icon(Icons.check),
              text: 'Edit Note',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextFields(hint: 'title'),
            SizedBox(
              height: 15,
            ),
            CustomTextFields(
              hint: 'content',
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
