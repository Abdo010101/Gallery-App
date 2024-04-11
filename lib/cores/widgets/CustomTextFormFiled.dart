import 'package:flutter/material.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField({super.key, this.textEditingController});
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController, decoration: InputDecoration());
  }
}
