import 'package:flutter/material.dart';
import 'package:otido2/helper.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      appBar: _Appbar(context, appTheme),
      drawer: wDrawer(context),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
      ),
    );
  }

  AppBar _Appbar(context, ThemeData appTheme) {
    return AppBar(
      title: wGosNumber(context, 'a 123 aa', '123'),
      centerTitle: true,
      actions: [
        PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: Text(
                      'Menu 1',
                      style: appTheme.textTheme.popupMenu,
                    ),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Menu 2',
                      style: appTheme.textTheme.popupMenu,
                    ),
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Menu 3',
                      style: appTheme.textTheme.popupMenu,
                    ),
                    onTap: () {},
                  ),
                ]),
      ],
    );
  }
}
