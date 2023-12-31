import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.maxlines,
    this.validator
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final int? maxlines;
  final Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      maxLines: maxlines?? 1,
      validator:(value)
    {
      if (validator != null) {
        return validator!(value);
      }
      return null;
    },
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        filled: true,
        border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}



