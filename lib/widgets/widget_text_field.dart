import 'package:flutter/material.dart';

Widget wTextField(BuildContext context,
    {TextEditingController? controller,
    String label = '',
    bool obscure = false}) {
  return TextField(
    controller: controller,
    style: Theme.of(context).textTheme.bodyMedium,
    decoration: InputDecoration(labelText: label),
    obscureText: obscure,
  );
}
