import 'package:flutter/material.dart';
import 'package:my_tools/src/Widgets/my_drawe_header.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[100],
      shape: const Border(
          right: BorderSide(
              color: Colors.blue,
              width: 2.0
          )
      ),
      width: 200.0,
      child: ListView(
        children: [
          const MyDrawerHeader(),
          ListTile(
            dense: true,
            horizontalTitleGap: 8.0,
            minLeadingWidth: 10.0,
            leading: const Icon(Icons.grid_4x4, size: 35.0,),
            title: const Text("GridView"),
            subtitle: const Text("Vista en cuadros"),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 20.0,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
