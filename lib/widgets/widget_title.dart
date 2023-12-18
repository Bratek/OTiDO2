import 'package:flutter/material.dart';
import 'package:otido2/themes/data_theme.dart';

Widget wTitle(BuildContext context, {String title = ''}) {
  return Text(title, style: Theme.of(context).textTheme.title);
}
