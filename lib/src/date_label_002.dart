import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// 002 style of the date label.
class DateLabel002 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showWeekday;

  const DateLabel002._({
    required DateTime dateTime,
    required bool showWeekday,
  })  : _showWeekday = showWeekday,
        _dateTime = dateTime;

  /// factory
  factory DateLabel002({DateTime? dateTime, bool? showWeekday}) {
    return DateLabel002._(
      dateTime: dateTime ?? DateTime.now(),
      showWeekday: showWeekday ?? true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Text(
            DateFormat("MM/dd").format(_dateTime),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontFeatures: const <FontFeature>[
                FontFeature.fractions(),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (_showWeekday)
            Column(
              children: [
                Text(
                  "",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                ),
                Text(
                  DateFormat("EEE").format(_dateTime),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
