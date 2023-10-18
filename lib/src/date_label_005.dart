import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 005 style of the date label.
class DateLabel005 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showYear;

  final Color _color;

  const DateLabel005._({
    required DateTime dateTime,
    required bool showYear,
    required Color color,
  })  : _dateTime = dateTime,
        _showYear = showYear,
        _color = color;

  /// factory
  factory DateLabel005({DateTime? dateTime, bool? showYear, Color? color}) {
    return DateLabel005._(
      dateTime: dateTime ?? DateTime.now(),
      showYear: showYear ?? false,
      color: color ?? Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat('24').format(_dateTime),
            style: TextStyle(
              fontSize: 60,
              height: 1,
              fontWeight: FontWeight.bold,
              color: _color,
            ),
          ),
          Text(
            DateFormat(' EEE.').format(_dateTime).toUpperCase(),
            style: TextStyle(
              fontSize: 35,
              height: 0.77,
              fontWeight: FontWeight.bold,
              color: _color,
            ),
          ),
          if (_showYear)
            Text(
              DateFormat('yyyy').format(_dateTime).toUpperCase(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: _color,
              ),
            ),
        ],
      ),
    );
  }
}
