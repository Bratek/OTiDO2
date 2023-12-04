import 'package:flutter/material.dart';

Widget wTitle(BuildContext context, {String title = ''}) {
  return Text(title, style: Theme.of(context).textTheme.titleMedium);
}
