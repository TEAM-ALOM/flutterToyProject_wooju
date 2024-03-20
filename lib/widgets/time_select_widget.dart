import 'package:flutter/material.dart';

class TimeSelect extends StatefulWidget {
  const TimeSelect({super.key});

  @override
  State<TimeSelect> createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: Text(
        'time',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
