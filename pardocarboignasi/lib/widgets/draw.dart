import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  final IconData icon;
  final String value;
  final Color? color;

  const Draw({
    Key? key,
    required this.icon,
    required this.value,
    this.color = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
