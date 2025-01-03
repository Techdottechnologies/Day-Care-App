import 'package:adunestapp/config/colors.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class HomePageCAl extends StatefulWidget {
  const HomePageCAl({Key? key}) : super(key: key);

  @override
  State<HomePageCAl> createState() => _HomePageCAlState();
}

class _HomePageCAlState extends State<HomePageCAl> {
  late DateTime _selectedDate;
  late List<DateTime> _eventDates;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
    _eventDates = [
      DateTime.now().add(const Duration(days: 2)),
      DateTime.now().add(const Duration(days: 3)),
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().subtract(const Duration(days: 4)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333A47),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Calendar Timeline',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.tealAccent[100]),
              ),
            ),
            CalendarTimeline(
              showYears: false,
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
              eventDates: _eventDates,
              onDateSelected: (date) => setState(() => _selectedDate = date),
              leftMargin: 12,
              // monthColor: Colors.red,
              
              dayColor: Colors.teal[200],
              
              dayNameColor: const Color(0xFF333A47),
              activeDayColor: Colors.white,
              activeBackgroundDayColor: MyColors.primary,
              dotColor: Colors.white,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.teal[200]),
                ),
                child: const Text(
                  'RESET',
                  style: TextStyle(color: Color(0xFF333A47)),
                ),
                onPressed: () => setState(() => _resetSelectedDate()),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Selected date is $_selectedDate',
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}