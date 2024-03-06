import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/data/db.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = dataTheme(Theme.of(context).brightness);
    var db = DB();
    var currentUser = db.getUserById(0);

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
                  "${currentUser.surname} ${currentUser.name} ${currentUser.patronymic}",
                  style: appTheme.textTheme.titleMin,
                  softWrap: true,
                ),
                vSpace(10),
                Text(
                  "${currentUser.email}",
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      S.of(context).profile,
                      style: appTheme.textTheme.menuItem,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      S.of(context).settings,
                      style: appTheme.textTheme.menuItem,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, '/garage');
                    },
                    child: Text(
                      S.of(context).garage,
                      style: appTheme.textTheme.menuItem,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (r) => false);
                    },
                    child: Text(
                      S.of(context).sign_out,
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
}
