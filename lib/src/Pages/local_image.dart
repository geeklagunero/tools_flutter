import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage(
          'assets/pug-e.jpeg'
        ),
      )
    );
  }
}
