import 'package:flutter/material.dart';
import 'package:flutter_app_01/widgets/list_card_feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Card', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListCardFeed(),
      backgroundColor: const Color.fromARGB(255, 219, 227, 231),
    );
  }
}




