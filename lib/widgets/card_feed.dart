import 'package:flutter/material.dart';
import 'package:flutter_app_01/widgets/buttons_card.dart';
import 'package:flutter_app_01/widgets/description_card.dart';
import 'package:flutter_app_01/widgets/image_card.dart';
import 'package:flutter_app_01/widgets/title_card.dart';

class CardFeed extends StatelessWidget {
  const CardFeed({super.key, required this.card});

  final Map<String, String> card;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.only(top: 10),
          width: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TitleCard(name: card["name"]!),
                ),
                DescriptionCard(description: card["description"]!),
                ImageCard(image: card["image"]!),
                Container(child: ButtonsCard())
              ],
            ),
          )),
    );
  }
}
