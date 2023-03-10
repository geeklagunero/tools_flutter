import 'package:flutter/material.dart';
import 'package:my_tools/src/Pages/local_image.dart';
import 'package:my_tools/src/Pages/my_gridview.dart';
import 'package:my_tools/src/Pages/my_pageview.dart';
import 'package:my_tools/src/Widgets/my_drawer.dart';
import 'package:my_tools/src/utils/drawer_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {

    //aqui van las cosas que se ba  redibijar
    /*
    List<Widget> myBody = const [
      LocalImage(),
      MyPageView(),
      MyGridView(),
    ];*/

    List<MyItems> myBody = DrawerItems().items;

    return Scaffold(
      appBar: AppBar(
        title: Text(myBody[index].title),
      ),
      drawer: MyDrawer(
        cIndex: (i){
          setState(() {
            index = i;
          });
        },
      ),
      body: myBody[index].route,

    );
  }
}
