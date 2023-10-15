import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

/// 001 style of the date label.
class DateLabel001 extends StatelessWidget {
  final DateTime _dateTime;
  final bool _showYear;

  const DateLabel001._({
    required DateTime dateTime,
    required bool showYear,
  })  : _showYear = showYear,
        _dateTime = dateTime;

  /// factory
  factory DateLabel001({DateTime? dateTime, bool? showYear}) {
    return DateLabel001._(
      dateTime: dateTime ?? DateTime.now(),
      showYear: showYear ?? false,
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
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _showYear
                  ? Text(
                      DateFormat('yyyy').format(_dateTime).toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  : Text(
                      "",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
              Text(
                DateFormat('EEE').format(_dateTime).toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
