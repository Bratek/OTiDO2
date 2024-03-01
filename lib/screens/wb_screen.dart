import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class WBScreen extends StatefulWidget {
  const WBScreen({super.key});

  @override
  State<WBScreen> createState() => _WBScreenState();
}

class _WBScreenState extends State<WBScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:
                wGosNumber(context, gCurrentCar.number!, gCurrentCar.region!),
            centerTitle: true,
            actions: [
              _popUpMenu(context, appTheme),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                child: Text(
                  "Основная",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Маршрут",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              WBMainScreen(),
              Icon(Icons.directions_transit),
            ],
          ),
        ));
  }

  Widget _popUpMenu(BuildContext context, ThemeData appTheme) {
    return PopupMenuButton(
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
            ]);
  }
}

Widget WB_main(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Card(
          child: Text('15.10.2023'),
        ),
      ],
    ),
  );
}
