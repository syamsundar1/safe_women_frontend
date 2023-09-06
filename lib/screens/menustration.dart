import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Mensutration extends StatelessWidget {
  DateTime newDate;
  Mensutration(this.newDate);

  // const Mensutration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SfCalendar(
          view: CalendarView.month,
          firstDayOfWeek: 6,
          //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
          //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
          dataSource: MeetingDataSource(getAppointments()),
        )),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  // final DateTime startTime =
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(days: 5));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Next Peroid',
      color: Colors.red,
      // recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: true));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
