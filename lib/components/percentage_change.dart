import 'package:flutter/material.dart';

class PercentageChange extends StatelessWidget {
  const PercentageChange({
    @required this.percentageChange,
  });

  final String percentageChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: percentageChange.contains('+') ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              percentageChange,
            ),
          ),
        ));
  }
}
