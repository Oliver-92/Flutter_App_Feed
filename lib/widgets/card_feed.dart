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
          margin: const EdgeInsets.all(10),
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
                  child: TitleCard(avatar: card["avatar"]!, bgColor: card["bgColor"]!, name: card["name"]!),
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

// Mapa de color para los avatares
Map<String, Color> colorMap = {
  "blue": Colors.blue,
  "red": Colors.red,
  "green": Colors.green,
  "yellow": Colors.yellow,
  "purple": Colors.purple,
  "amber": Colors.amber,
  "orange": Colors.orange,
  "white": Colors.white,
  "grey": Colors.grey,
};

Color getColorFromString(String colorName) {
  return colorMap[colorName] ?? Colors.grey; // Color por defecto si no se encuentra
}
