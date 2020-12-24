import 'package:flutter/material.dart';

class PointChange extends StatelessWidget {
  const PointChange({
    @required this.pointsChange,
  });

  final String pointsChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        pointsChange,
        style: TextStyle(
          color: pointsChange.contains('+') ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
