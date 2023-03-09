import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      
      children: const [
        Image(
            fit: BoxFit.scaleDown,
            image: NetworkImage('https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg')
        ),
        Image(
            fit: BoxFit.scaleDown,
            image: NetworkImage('https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg')
        ),
      ],

    );
  }
}
