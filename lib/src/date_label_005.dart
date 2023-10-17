import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 005 style of the date label.
class DateLabel005 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showYear;

  const DateLabel005._({
    required DateTime dateTime,
    required bool showYear,
  })  : _dateTime = dateTime,
        _showYear = showYear;

  /// factory
  factory DateLabel005({DateTime? dateTime, bool? showYear}) {
    return DateLabel005._(
      dateTime: dateTime ?? DateTime.now(),
      showYear: showYear ?? false,
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
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            DateFormat(' EEE.').format(_dateTime).toUpperCase(),
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  height: 0.77,
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (_showYear)
            Text(
              DateFormat('yyyy').format(_dateTime).toUpperCase(),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
        ],
      ),
    );
  }
}
