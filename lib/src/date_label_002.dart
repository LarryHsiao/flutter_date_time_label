import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// 002 style of the date label.
class DateLabel002 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showWeekday;
  final Color _color;

  const DateLabel002._({
    required DateTime dateTime,
    required bool showWeekday,
    required Color color,
  })  : _showWeekday = showWeekday,
        _dateTime = dateTime,
        _color = color;

  /// factory
  factory DateLabel002({DateTime? dateTime, bool? showWeekday, Color? color}) {
    return DateLabel002._(
      dateTime: dateTime ?? DateTime.now(),
      showWeekday: showWeekday ?? true,
      color: color ?? Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            DateFormat("MM/dd").format(_dateTime),
            style: TextStyle(
              height: 0.9,
              fontSize: 70,
              fontFeatures: const <FontFeature>[
                FontFeature.fractions(),
              ],
              color: _color,
            ),
          ),
          const SizedBox(width: 8),
          if (_showWeekday)
            Text(
              DateFormat("EEE").format(_dateTime),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _color,
              ),
            ),
        ],
      ),
    );
  }
}
