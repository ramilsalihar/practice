import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
    required this.hintText,
    required this.usernameController,
  });

  final String hintText;
  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: usernameController,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
    );
  }
}
