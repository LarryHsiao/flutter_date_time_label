import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// 003 style of the date label.
class DateLabel003 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showWeekday;
  final Color _color;

  const DateLabel003._({
    required DateTime dateTime,
    required bool showWeekday,
    required Color color,
  })  : _showWeekday = showWeekday,
        _dateTime = dateTime,
        _color = color;

  /// factory
  factory DateLabel003({DateTime? dateTime, bool? showWeekday, Color? color}) {
    return DateLabel003._(
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
          Column(
            children: [
              Text(
                DateFormat("yyyy").format(_dateTime),
                style: TextStyle(
                  fontSize: 60,
                  fontStyle: FontStyle.italic,
                  color: _color,
                ),
              ),
              Text(
                DateFormat("MM/dd").format(_dateTime),
                style: TextStyle(
                  fontSize: 60,
                  fontStyle: FontStyle.italic,
                  color: _color,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          if (_showWeekday)
            Text(
              DateFormat("EEE.").format(_dateTime).toLowerCase(),
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: _color,
              ),
            ),
        ],
      ),
    );
  }
}
