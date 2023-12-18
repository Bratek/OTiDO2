import 'package:flutter/material.dart';
import 'package:otido2/helper.dart';

Widget wDrawer(BuildContext context) {
  final appTheme = Theme.of(context);
  return Drawer(
    backgroundColor: appTheme.colorScheme.backgroundColor,
    child: SafeArea(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          color: appTheme.colorScheme.footerColor,
          width: double.infinity,
          //height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Иванов Максимильян Савельевич',
                style: appTheme.textTheme.titleMin,
                softWrap: true,
              ),
              vSpace(10),
              Text(
                "email@mail.ru",
                style: appTheme.textTheme.info
                    .copyWith(color: appTheme.colorScheme.mediumColor),
                softWrap: true,
              ),
            ],
          ),
        ),
        Container(
          color: appTheme.colorScheme.accentColor,
          width: double.infinity,
          height: 4,
        ),
        Expanded(
          child: Container(
            color: appTheme.colorScheme.backgroundColor,
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).profile,
                    style: appTheme.textTheme.menuItem,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).settings,
                    style: appTheme.textTheme.menuItem,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}
