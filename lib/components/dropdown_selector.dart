import 'package:flutter/material.dart';

class DropDownSelector extends StatelessWidget {
  final String selected;
  final List<String> options;
  final Function onChanged;

  DropDownSelector({this.options, this.selected, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF0A0E21),
        border: Border.all(
          width: 0.4,
          color: Colors.grey,
        ),
      ),
      child: DropdownButton<String>(
        value: selected,
        style: TextStyle(fontSize: 20),
        icon: Icon(Icons.list),
        iconSize: 30,
        elevation: 16,
        underline: SizedBox(),
        onChanged: onChanged,
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
