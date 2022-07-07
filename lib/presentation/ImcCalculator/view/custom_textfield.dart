import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String unit;
  final TextEditingController? controller;

  const CustomTextField(
      {super.key, required this.label, required this.unit, this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(
          width: 36,
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(21),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                width: 160,
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: 25,
                alignment: Alignment.centerRight,
                child: Text(
                  unit,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
