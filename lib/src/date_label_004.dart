import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 004 style of the date label.
class DateLabel004 extends StatelessWidget {
  final DateTime _dateTime;
  final Color _color;

  const DateLabel004._({
    required DateTime dateTime,
    required Color color,
  })  : _dateTime = dateTime,
        _color = color;

  /// factory
  factory DateLabel004({DateTime? dateTime, Color? color}) {
    return DateLabel004._(
      dateTime: dateTime ?? DateTime.now(),
      color: color ?? Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('MM/dd').format(_dateTime),
            style: TextStyle(
              fontSize: 60,
              color: _color,
            ),
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  DateFormat('EEE').format(_dateTime).toUpperCase(),
                  style: TextStyle(
                    color: _color,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
