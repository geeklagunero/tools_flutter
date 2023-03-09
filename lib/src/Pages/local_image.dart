import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.brown, Colors.deepOrangeAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.5, 0.7]
          )
        ),
        child: const Image(

          height: 350.0,
          width: double.infinity,
          image: AssetImage(
            'assets/pug-e.jpeg'
          ),
        ),
      )
    );
  }
}
