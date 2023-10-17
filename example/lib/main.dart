import 'package:flutter/material.dart';
import 'package:flutter_date_time_label/flutter_date_time_label.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExamplePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key, required this.title});

  final String title;

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DateLabel001(
              dateTime: DateTime.now(),
              showYear: true,
            ),
            const Divider(),
            DateLabel002(
              dateTime: DateTime.now(),
              showWeekday: true,
            ),
            const Divider(),
            DateLabel003(
              dateTime: DateTime.now(),
              showWeekday: true,
            ),
            const Divider(),
            DateLabel004(
              dateTime: DateTime.now(),
            ),
            const Divider(),
            DateLabel005(
              dateTime: DateTime.now(),
              showYear: true,
            ),
          ],
        ),
      ),
    );
  }
}
