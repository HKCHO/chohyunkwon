import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SfCalendar(
            view: CalendarView.month,
            headerDateFormat: 'yyy년 MMM',
            // firstDayOfWeek: 1, // 월요일 시작
          ),
        )
      ),
    );
  }
}
