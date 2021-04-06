import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  final String title;
  final String subtitle;

  StatusItem(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
              title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          Text(subtitle,
          style: TextStyle(
            color: Colors.grey
          ),)
        ],
      ),
    );
  }
}
