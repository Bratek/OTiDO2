import 'package:flutter/material.dart';
import 'package:otido2/presentation/themes/data_theme.dart';

Widget wButton(BuildContext context,
    {String label = '', Function()? onPressed}) {
  double buttonWidth = MediaQuery.of(context).size.width - 128;
  ThemeData appTheme = dataTheme(Theme.of(context).brightness);
  // return GestureDetector(
  //   onTap: onPressed ?? () {},
  //   child: Padding(
  //     padding: const EdgeInsets.only(left: 18, right: 18),
  //     child: ElevatedButton(
  //       onPressed: onPressed ?? () {},
  //       child: Padding(
  //         padding: const EdgeInsets.all(10),
  //         child: Text(
  //           label,
  //           style: appTheme.textTheme.buttonText,
  //         ),
  //       ),
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: appTheme.colorScheme.accentColor,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(30),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
  return GestureDetector(
    onTap: onPressed ?? () {},
    child: Container(
      width: buttonWidth,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
        color: appTheme.colorScheme.accentColor,
      ),
      child: Center(
        child: Text(
          label,
          style: appTheme.textTheme.buttonText,
        ),
      ),
    ),
  );
}
