import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// 003 style of the date label.
class DateLabel003 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showWeekday;

  const DateLabel003._({
    required DateTime dateTime,
    required bool showWeekday,
  })  : _showWeekday = showWeekday,
        _dateTime = dateTime;

  /// factory
  factory DateLabel003({DateTime? dateTime, bool? showWeekday}) {
    return DateLabel003._(
      dateTime: dateTime ?? DateTime.now(),
      showWeekday: showWeekday ?? true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                DateFormat("yyyy").format(_dateTime),
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
              Text(
                DateFormat("MM/dd").format(_dateTime),
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          if (_showWeekday)
            Text(
              DateFormat("EEE.").format(_dateTime).toLowerCase(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
            ),
        ],
      ),
    );
  }
}
