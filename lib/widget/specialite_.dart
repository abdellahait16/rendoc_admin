import 'package:flutter/material.dart';

class Specialite extends StatelessWidget {
  const Specialite({
    super.key,
    required this.color,
    this.type = '',
    this.icon = Icons.error,
  });

  final String type;
  final IconData icon;
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
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            type,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
