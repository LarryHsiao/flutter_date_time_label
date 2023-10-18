import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 001 style of the date label.
class DateLabel001 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showYear;
  final Color _color;

  const DateLabel001._({
    required DateTime dateTime,
    required bool showYear,
    required Color color,
  })  : _showYear = showYear,
        _dateTime = dateTime,
        _color = color;

  /// factory
  factory DateLabel001({DateTime? dateTime, bool? showYear, Color? color}) {
    return DateLabel001._(
      dateTime: dateTime ?? DateTime.now(),
      showYear: showYear ?? false,
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
            DateFormat('MM.dd').format(_dateTime),
            style: TextStyle(fontSize: 70, color: _color),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _showYear
                  ? Text(
                      DateFormat('yyyy').format(_dateTime).toUpperCase(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: _color,
                      ),
                    )
                  : const Text(
                      "",
                      style: TextStyle(fontSize: 25),
                    ),
              Text(
                DateFormat('EEE').format(_dateTime).toUpperCase(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: _color,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
