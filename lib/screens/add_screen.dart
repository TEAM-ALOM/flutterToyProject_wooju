import 'package:flutter/material.dart';
import 'package:todolist/widgets/date_select_widget.dart';
import 'package:todolist/widgets/time_select_widget.dart';

class AddScreen extends StatelessWidget {
  final todoTextController = TextEditingController();

  AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[200],
        foregroundColor: Colors.black,
        title: Text(
          'Add ToDo',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '할 일',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              controller: todoTextController,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '날 짜',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            DateSelect(),
            SizedBox(
              height: 40,
            ),
            Text(
              '시 간',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('시작 시간'),
                    TimeSelect(),
                  ],
                ),
                Column(
                  children: [
                    Text('종료 시간'),
                    TimeSelect(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '메 모',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
