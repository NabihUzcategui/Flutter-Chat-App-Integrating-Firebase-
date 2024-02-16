import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hinText;
  final bool isObscureText;
  final TextEditingController controller;

  const MyTextFormField(
      {super.key,
      required this.hinText,
      required this.isObscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscureText,
      decoration: InputDecoration(
        hintText: hinText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(),
        ),
        fillColor: Colors.grey.shade300,
        filled: true,
      ),
    );
  }
}
