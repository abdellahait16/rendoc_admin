import 'package:flutter/material.dart';

class SelectionJoure extends StatelessWidget {
  const SelectionJoure(
      {super.key,
      required this.day ,
      required this.color});

  final String day;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          day,
          style: Theme.of(context).textTheme.headline6,
        ));
  }
}