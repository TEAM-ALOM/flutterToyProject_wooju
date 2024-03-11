import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  final String title;
  bool isOpen = false;

  ToDoList({
    super.key,
    required String this.title,
  });

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  void onArrowTap() {
    setState(() {
      widget.isOpen = !widget.isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isOpen)
          Container(
            height: 1.0,
            width: 500.0,
            color: Colors.black,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            IconButton(
              onPressed: onArrowTap,
              icon: Icon(
                widget.isOpen
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 30,
              ),
            ),
          ],
        ),
        if (widget.isOpen)
          SizedBox(
            height: 10,
          ),
        if (widget.isOpen)
          Text(
            'todotodotodo',
          ),
        if (widget.isOpen)
          Container(
            height: 1.0,
            width: 500.0,
            color: Colors.black,
          ),
      ],
    );
  }
}
