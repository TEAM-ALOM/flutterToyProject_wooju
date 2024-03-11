import 'package:flutter/material.dart';
import 'package:todolist/screens/add_screen.dart';
import 'package:todolist/widgets/todolist_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[200],
        foregroundColor: Colors.black,
        title: Text(
          'ToDoList',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
            icon: Icon(
              Icons.add,
              size: 30,
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
          children: [
            ToDoList(
              title: '오늘의 할 일',
            ),
            ToDoList(
              title: '일주일간의 해야할 일',
            ),
            ToDoList(
              title: '이번 달의 할 일',
            ),
            ToDoList(
              title: '지금 할 일',
            ),
          ],
        ),
      ),
    );
  }
}
