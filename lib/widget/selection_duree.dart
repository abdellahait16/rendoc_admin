import 'package:flutter/material.dart';

class SelectionDuree extends StatelessWidget {
  const SelectionDuree(
      {super.key,
      this.duration = const Duration(minutes: 0),
      required this.color,
      });

  final Duration duration;
  final Color color;

  @override
  Widget build(BuildContext context) {
    int hours = duration.inHours % 24;

    String gettimefun() {
      if (hours < 10) {
        return '0$hours : 00';
      }  else {
        return '$hours : 00';
      }
    }

    return Container(
      alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          gettimefun(),
          style: Theme.of(context).textTheme.headline6,
        ));
  }
}
