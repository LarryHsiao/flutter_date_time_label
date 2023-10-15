import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateLabel002 extends StatelessWidget {
  final DateTime dateTime;
  final bool showWeekday;

  const DateLabel002._({
    super.key,
    required this.dateTime,
    required this.showWeekday,
  });

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
            DateFormat("MM/dd").format(dateTime),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontFeatures: const <FontFeature>[
                FontFeature.fractions(),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (showWeekday)
            Column(
              children: [
                Text(
                  "",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                ),
                Text(
                  DateFormat("EEE").format(dateTime),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
