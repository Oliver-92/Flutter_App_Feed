
import 'dart:ui';
import 'package:flutter/material.dart';
class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,

    required this.image
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ImageFiltered(
        imageFilter: ImageFilter.matrix(Matrix4.identity().storage),
        child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Debe coincidir con el de arriba
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            )));
  }
}

