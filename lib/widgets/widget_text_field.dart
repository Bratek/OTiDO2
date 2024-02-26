import 'package:flutter/material.dart';
import 'package:otido2/themes/data_theme.dart';

Widget wTextField(BuildContext context,
    {TextEditingController? controller,
    String label = '',
    bool obscure = false,
    TextInputType keyboardType = TextInputType.text}) {
  return TextField(
    //expands: true ,
    controller: controller,
    style: Theme.of(context).textTheme.body,
    decoration: InputDecoration(labelText: label),
    obscureText: obscure,
    keyboardType: keyboardType,
  );
}
