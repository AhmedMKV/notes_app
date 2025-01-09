import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFields(
                hint: 'title',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFields(
                maxLines: 5,
                hint: 'content',
              ),
              SizedBox(height:20),
              CustomButton(
                  onTap: (){},
                  buttonText: 'Add'),
            ],
          ),
        ),
      );
  }
}
