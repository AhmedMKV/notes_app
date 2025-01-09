import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            CustomTextFields(
              fieldPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              hint: 'title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFields(
              fieldPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 70),
              hint: 'content',
            ),
            Spacer(),
            CustomButton(buttonText: 'Add')
          ],
        ),
      ),
    );
  }
}
