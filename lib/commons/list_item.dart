import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  ListItem({this.text});
  final String text;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        this.widget.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
