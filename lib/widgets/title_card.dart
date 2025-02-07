import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,

    required this.name
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text(
            "J",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}