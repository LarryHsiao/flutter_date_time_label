import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 004 style of the date label.
class DateLabel004 extends StatelessWidget {
  final DateTime _dateTime;

  const DateLabel004._({
    required DateTime dateTime,
  }) : _dateTime = dateTime;

  /// factory
  factory DateLabel004({DateTime? dateTime}) {
    return DateLabel004._(
      dateTime: dateTime ?? DateTime.now(),
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
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  DateFormat('EEE').format(_dateTime).toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold
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
