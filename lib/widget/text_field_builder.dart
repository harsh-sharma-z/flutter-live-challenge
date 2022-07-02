import 'package:flutter/material.dart';

class TextFieldBuilder extends StatelessWidget {
  final String labelText;
  final Icon icon;
  final TextInputType textType;
  final TextEditingController controller;

  const TextFieldBuilder({
    super.key,
    required this.icon,
    required this.labelText,
    required this.controller,
    required this.textType,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // isDense: true,
        prefixIcon: icon,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      controller: controller,
      keyboardType: textType,
      onSubmitted: (_) => FocusScope.of(context).unfocus(),
    );
  }
}
