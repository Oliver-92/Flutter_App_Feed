import 'package:flutter/material.dart';
import 'package:flutter_app_01/data/data.dart';
import 'package:flutter_app_01/widgets/card_feed.dart';

class ListCardFeed extends StatelessWidget {
  const ListCardFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: listCard.length,
      itemBuilder: (context, index) {
      return CardFeed(card: listCard[index],);
    });
  }
}