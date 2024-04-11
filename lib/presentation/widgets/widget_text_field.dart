import 'package:flutter/material.dart';
import 'package:otido2/presentation/themes/data_theme.dart';

Widget wTextField(
  BuildContext context, {
  TextEditingController? controller,
  String label = '',
  bool obscure = false,
  TextInputType keyboardType = TextInputType.text,
  TextAlign align = TextAlign.start,
}) {
  ThemeData appTheme = Theme.of(context);
  return TextField(
    //expands: true ,
    controller: controller,
    style: appTheme.textTheme.body,
    textAlign: align,
    decoration:
        InputDecoration(labelText: label, labelStyle: appTheme.textTheme.label),
    obscureText: obscure,
    keyboardType: keyboardType,
  );
}
