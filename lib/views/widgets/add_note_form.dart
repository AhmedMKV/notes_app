import 'package:flutter/material.dart';

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
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFields(
            onSaved: (value){
              title=value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFields(
            onSaved: (value){
              subtitle=value;
            },
            maxLines: 7,
            hint: 'content',
          ),
          SizedBox(height: 20),
          CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              }, buttonText: 'Add'
              ''),
        ],
      ),
    );
  }
}