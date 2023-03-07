import 'package:flutter/material.dart';
import 'package:my_tools/src/Widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),

    );
  }
}
