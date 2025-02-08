import 'package:flutter/material.dart';
import 'package:flutter_app_01/widgets/card_feed.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,

    required this.name,
    required this.avatar,
    required this.bgColor
  });

  final String name;
  final String avatar;
  final String bgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: getColorFromString(bgColor),
          child: Text(
            avatar,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
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