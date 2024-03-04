import 'package:flutter/material.dart';
import 'package:otido2/themes/data_theme.dart';

Widget wInfo(BuildContext context, {String title = ''}) {
  return Flexible(child: Text(title, style: Theme.of(context).textTheme.body));
}
