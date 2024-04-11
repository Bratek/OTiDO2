import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class WBMainScreen extends StatefulWidget {
  const WBMainScreen({super.key});

  @override
  State<WBMainScreen> createState() => _WBMainScreenState();
}

class _WBMainScreenState extends State<WBMainScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: <Widget>[
          vSpace(20),
          appTile(
            context: context,
            theme: appTheme,
            child: Text(
              "15.10.2023",
              style: appTheme.textTheme.param,
            ),
          ),
          vSpace(8),
          Row(children: [
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Время выезда", style: appTheme.textTheme.label),
                  vSpace(8),
                  Text("08:15", style: appTheme.textTheme.param),
                ]),
              ),
            ),
            hSpace(8),
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(
                  children: [
                    Text("Время заезда", style: appTheme.textTheme.label),
                    vSpace(8),
                    Text("18:10", style: appTheme.textTheme.param),
                  ],
                ),
              ),
            ),
          ]),
          vSpace(8),
          Row(children: [
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Пробег на начало", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("1102526", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("км", style: appTheme.textTheme.label)
                    ],
                  ),
                ]),
              ),
            ),
            hSpace(8),
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Пробег на конец", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("1102756", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("км", style: appTheme.textTheme.label),
                    ],
                  ),
                ]),
              ),
            ),
          ]),
          vSpace(8),
          Row(children: [
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Бак на начало", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("15.500", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("л", style: appTheme.textTheme.label)
                    ],
                  ),
                ]),
              ),
            ),
            hSpace(8),
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Бак на конец", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("12.500", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("л", style: appTheme.textTheme.label),
                    ],
                  ),
                ]),
              ),
            ),
          ]),
          vSpace(8),
          Row(children: [
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Заправка", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("20.000", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("л", style: appTheme.textTheme.label)
                    ],
                  ),
                ]),
              ),
            ),
            hSpace(8),
            Expanded(
              child: appTile(
                context: context,
                theme: appTheme,
                child: Column(children: [
                  Text("Суточный расход", style: appTheme.textTheme.label),
                  vSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("23.000", style: appTheme.textTheme.param),
                      hSpace(8),
                      Text("л", style: appTheme.textTheme.label),
                    ],
                  ),
                ]),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

Widget appTile({BuildContext? context, ThemeData? theme, Widget? child}) {
  return Container(
    alignment: Alignment.center,
    //width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: theme!.colorScheme.previousColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 5,
          offset: const Offset(2, 4), // Shadow position
        ),
      ],
    ),
    padding: const EdgeInsets.all(8),
    child: child,
  );
}
