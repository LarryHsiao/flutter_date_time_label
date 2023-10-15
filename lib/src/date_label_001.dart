import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class DateLabel001 extends StatelessWidget {
  final DateTime dateTime;
  final bool showYear;

  const DateLabel001._({
    required this.dateTime,
    required this.showYear,
  });

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
            DateFormat('MM.dd').format(dateTime),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              showYear
                  ? Text(
                      DateFormat('yyyy').format(dateTime).toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  : Text(
                      "",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
              Text(
                DateFormat('EEE').format(dateTime).toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
