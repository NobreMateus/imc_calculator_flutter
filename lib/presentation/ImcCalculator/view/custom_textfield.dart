import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;

  const CustomTextField({super.key, required this.label, this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        TextField(
          controller: controller,
        ),
      ],
    );
  }
}
