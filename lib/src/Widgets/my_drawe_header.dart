import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: const BoxDecoration(
            color: Colors.blue
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleAvatar(
              radius: 30.0,
              child: Icon(
                Icons.person,
                size: 35.0,
              ),
            ),
            Text("Binevnidos")
          ],
        )
    );
  }
}
