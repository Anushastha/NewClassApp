import 'package:flutter/material.dart';

class DateTimeView extends StatefulWidget {
  const DateTimeView({super.key});

  @override
  State<DateTimeView> createState() => _DateTimeViewState();
}

class _DateTimeViewState extends State<DateTimeView> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(
                'Time: ${time!.hour}:${time!.minute}',
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time!,
                    );
                    if (newTime != null) {
                      setState(() {
                        time = newTime;
                      });
                    }
                  },
                  child: const Text('Change Time')),
              Text(
                'Date:${date!.day}/${date!.month}/${date!.year}',
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date!,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
                  if (newDate != null) {
                    setState(() {
                      date = newDate;
                    });
                  }
                },
                child: const Text('Change Date'),
              ),
            ],
          )),
    );
  }
}