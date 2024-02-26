import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:otido2/app_library.dart';

class wTableCalendar extends StatefulWidget {
  @override
  State<wTableCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<wTableCalendar> {
  List<CalendarDay> wbList = [];

  late DateTime _focusedDay;
  late DateTime _firstDay;
  late DateTime _lastDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _firstDay = DateTime(2000, 1, 1);
    _lastDay = DateTime(2100, 12, 31);

    //updateWBlist(_focusedDay);
  }

  // void updateWBlist(DateTime date) async {
  //   DateTime curMonth = DateTime(date.year, date.month, 1);
  //   var snapshot =
  //       await FirestoreService().fetchWayBills(global.car, period: curMonth);

  //   wbList.clear();
  //   if (snapshot == null || snapshot.isEmpty) {
  //     //Нет данных
  //   } else {
  //     for (int i = 0; i < snapshot.length; i++) {
  //       wbList.add(CalendarDay(snapshot[i].docDate, snapshot[i]));
  //     }
  //   }

  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = dataTheme(Theme.of(context).brightness);
    return TableCalendar(
      calendarBuilders: customCalendarBuilder(appTheme), // отрисовка дней
      firstDay: _firstDay,
      lastDay: _lastDay,
      focusedDay: _focusedDay,
      calendarFormat: CalendarFormat.month,

      locale: 'ru',
      headerStyle: HeaderStyle(
        // Заголовок календаря
        titleCentered: true,
        titleTextStyle: TextStyle(
            // Стиль для заголовка периода
            color: appTheme.colorScheme.oppositeColor,
            fontSize: 22,
            fontWeight: FontWeight.normal),
        formatButtonVisible: false,
        headerPadding: const EdgeInsets.symmetric(vertical: 0),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: appTheme.colorScheme.oppositeColor,
        ),
        rightChevronIcon: Icon(Icons.chevron_right,
            color: appTheme.colorScheme.oppositeColor),
      ),
      rangeSelectionMode: RangeSelectionMode.toggledOn,
      pageAnimationEnabled: false,
      pageAnimationDuration: const Duration(milliseconds: 1),
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekHeight: 40,
      daysOfWeekStyle: DaysOfWeekStyle(
          // Стиль заголовка дней
          weekdayStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color:
                  appTheme.colorScheme.oppositeColor), // цвет заголовка будни
          weekendStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color:
                  appTheme.colorScheme.mediumColor)), // цвет заголовка выходные
      availableGestures: AvailableGestures.none,
      //simpleSwipeConfig: const SimpleSwipeConfig(verticalThreshold: 25.0, swipeDetectionBehavior: SwipeDetectionBehavior.continuousDistinct),

      onPageChanged: (date) {
        _focusedDay = date;
        //updateWBlist(date);
      },

      onDaySelected: (selectedDay, focusedDay) {
        openWaybill(selectedDay);
      },
    );
  }

  void openWaybill(day) {
    // Waybill currentWaybill;
    // CalendarDay findDay = getDataOnDay(day);

    // // if (findDay == null)
    // //   lastWaybill = null;
    // // else
    // //   lastWaybill = findDay.waybill;

    // currentWaybill = findDay?.waybill ?? Waybill(global.car, lastWaybill: null);

    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => DetailsPage(waybill: currentWaybill)));
  }

  CalendarBuilders customCalendarBuilder(ThemeData appTheme) {
    return CalendarBuilders(
      selectedBuilder: (context, date, events) => Container(
        margin: const EdgeInsets.all(2.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: appTheme.colorScheme.accentColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          date.day.toString(),
          style: TextStyle(color: appTheme.colorScheme.oppositeColor),
        ),
      ),
      todayBuilder: (context, date, events) => Container(
          margin: const EdgeInsets.all(2.0),
          alignment: Alignment.center,
          decoration: dayDecoration(date, appTheme),
          child: Text(
            date.day.toString(),
            style: TextStyle(
                color: appTheme.colorScheme.accentColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),

      defaultBuilder: (context, date, _) => Container(
          // Стиль текста даты
          margin: const EdgeInsets.all(2.0),
          alignment: Alignment.center,
          decoration: dayDecoration(date, appTheme),
          child: Text(
            date.day.toString(),
            style: date.weekday == 6 || date.weekday == 7
                ? TextStyle(
                    color: appTheme.colorScheme.mediumColor, fontSize: 18)
                : TextStyle(
                    color: appTheme.colorScheme.oppositeColor, fontSize: 18),
          )),

      // disabledBuilder: (context, date, _) => Container(
      //     margin: const EdgeInsets.all(4.0),
      //     alignment: Alignment.center,
      //     child: Text(
      //       date.day.toString(),
      //       style: TextStyle(color: Colors.red),
      //     )),

      // headerTitleBuilder: (context, date) => Container(
      //   margin: const EdgeInsets.all(4.0),
      //   alignment: Alignment.center,
      //   child: Text(
      //     DateFormat('MMMM yyyy').format(date),
      //     style: TextStyle(
      //         color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // outsideDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.blue,
      //       color: Colors.red);
      // },
      // outsideHolidayDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.deepOrange,
      //       color: Colors.red);
      // },
      // holidayDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.purple,
      //       color: Colors.red);
      // },
      // outsideWeekendDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.pinkAccent,
      //       color: Colors.black);
      // },
      // dowWeekdayBuilder: (context, date) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.toString(), backColor: Colors.yellow, color: Colors.red);
      // },
      // dowWeekendBuilder: (context, date) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.toString(), backColor: Colors.green, color: Colors.red);
      // },
      // unavailableDayBuilder: (context, date, _) {
      //   return DaisyWidget().buildCalendarDay(
      //       day: date.day.toString(),
      //       backColor: Colors.red,
      //       color: DaisyColors.serveColor);
      // },
      // markersBuilder: (context, date, events, holidays) {
      //   final children = <Widget>[];
      //   if (events.isNotEmpty) {
      //     children.add(
      //       Positioned(
      //         bottom: 1,
      //         child: _buildEventsMarkerNum(date),
      //       ),
    );
  }

  BoxDecoration dayDecoration(DateTime date, ThemeData appTheme) {
    if (isDate(date)) {
      return BoxDecoration(
        border: Border.all(color: appTheme.colorScheme.mediumColor),
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(10),
      );
    } else {
      return BoxDecoration();
    }
  }

  bool isDate(DateTime curDate) {
    // final findDay = getDataOnDay(date);
    // if (findDay == null) return false;

    if (curDate.isBefore(DateTime.now())) return true;
    return false;
  }

  // CalendarDay getDataOnDay(DateTime date) {
  //   return wbList.firstWhereOrNull(
  //       (element) => element.date == DateTime(date.year, date.month, date.day));
  //}
}

class CalendarDay {
  DateTime date;
  //Waybill waybill;

  CalendarDay(this.date);
}
