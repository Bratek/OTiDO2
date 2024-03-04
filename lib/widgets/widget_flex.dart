import 'package:flutter/material.dart';

class wFlex {
  int total = 0;
  double unit = 0.0;

  wFlex(BuildContext context, this.total) {
    unit = MediaQuery.of(context).size.height / total;
  }

  Widget fit(int count) => SizedBox(height: unit * count);
}
