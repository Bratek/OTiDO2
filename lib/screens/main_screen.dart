//import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

//import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      appBar: _Appbar(context, appTheme),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
            child: wSeparator(appTheme),
          ),
          wNewsListView(appTheme),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: wSeparator(appTheme),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: wTableCalendar(),
          ),
          wFootterBlock(context, appTheme),
        ],
      ),
    );
    // );
  }

  AppBar _Appbar(context, ThemeData appTheme) {
    return AppBar(
      title: wGosNumber(context, gCurrentCar.number!, gCurrentCar.region!),
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

Widget wSeparator(ThemeData appTheme) => Container(
      color: appTheme.colorScheme.mediumColor,
      height: 1,
    );

Widget wNewsListView(ThemeData appTheme) {
  List<String> info = <String>[
    "Необходимо отправить путевые листы за сентябрь",
    "Превышен лимит топливной карты",
    "Поступление на счет 500р. Остаток на счете 750р.",
    "Необходимо отправить путевые листы за октябрь",
    "Превышен лимит топливной карты",
    "Поступление на счет 200р. Остаток на счете 350р."
  ];
  return Expanded(
    child: Container(
      //height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        // separatorBuilder: (BuildContext context, int index) =>
        //     DottedLine(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: appTheme.colorScheme.oppositeColor,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      info[index],
                      style: appTheme.textTheme.info
                          .copyWith(color: appTheme.colorScheme.oppositeColor),
                      maxLines: 2,
                      //softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

Widget wFootterBlock(BuildContext context, ThemeData appTheme) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      height: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: appTheme.colorScheme.mediumColor)),
      child: Center(
        child: Text(
          S.of(context).version,
          style: appTheme.textTheme.label,
        ),
      ),
    ),
  );
}
