import 'package:flutter/material.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({super.key});

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _selectedDate != null
              ? _selectedDate.toString().split(" ")[0]
              : "0000-00-00",
          style: TextStyle(fontSize: 16),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            elevation: 0,
          ),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2030),
            ).then((selectedDate) {
              setState(() {
                _selectedDate = selectedDate;
              });
            });
          },
          child: Text(
            '날짜 선택',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
