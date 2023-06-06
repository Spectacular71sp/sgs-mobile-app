import 'package:flutter/material.dart';
class inputField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final Function(String) onType;
  inputField({this.placeholder = '', required this.onType, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 30),
    decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        filled: true,
        fillColor: Colors.white,
        hintText: placeholder,
        contentPadding: EdgeInsets.only(top: 18, bottom: 19, left: 32, right: 28),
    ),
      controller: controller,
      onChanged: onType,
    );
  }
}
