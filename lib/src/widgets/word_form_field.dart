import 'package:flutter/material.dart';

class WordFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onSaved;

  WordFormField({this.labelText, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      textCapitalization: TextCapitalization.words,
      autocorrect: false,
      onSaved: onSaved,
    );
  }
}
