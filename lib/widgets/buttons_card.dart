import 'package:flutter/material.dart';
import 'package:flutter_app_01/widgets/like_button.dart';

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(
        color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold);

    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
    LikeButton(),
    TextButton(
        onPressed: () {},
        child: const Text('Comentar', style: textStyle)),
    TextButton(
        onPressed: () {},
        child: const Text('Compartir', style: textStyle)),
                    ],
                  );
  }
}

