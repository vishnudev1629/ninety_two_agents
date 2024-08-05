import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textController;
  final String labelText;
  CustomTextFormField({
    super.key,
    required this.textController,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      child: TextFormField(
        controller: textController,
        decoration:  InputDecoration(
            hintText: "Input",
            labelText: labelText,
            border: const OutlineInputBorder()),
      ),
    );
  }
}


