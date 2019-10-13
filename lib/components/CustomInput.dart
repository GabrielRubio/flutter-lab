import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controllerInput;
  final String label;
  final String hint;
  final IconData icon;

  CustomInput({this.controllerInput, this.label, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: controllerInput,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}