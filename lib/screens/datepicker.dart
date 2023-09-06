import 'package:flutter/material.dart';
import 'package:safe_women/screens/menustration.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime = DateTime.now();
  // var newDate;
  late DateTime formattedDate;

  void _showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
        _dateTime = _dateTime.add(const Duration(days: 27, hours: 1));
        // DateTime now = DateTime.now();
        DateFormat.yMMMMEEEEd().format(_dateTime);
        // print(formattedDate);
        // DateTime newDate =
        // DateTime(_dateTime.year, _dateTime.month + 27, _dateTime.day);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: _showdatepicker,
                    child: const Text(
                      "Pick the date",
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontFamily: 'Kanit',
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Your Next date is : ",
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'Kanit',
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat.yMMMMEEEEd().format(_dateTime).toString(),
                style: const TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'Kanit',
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
