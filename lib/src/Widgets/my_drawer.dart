import 'package:flutter/material.dart';
import 'package:my_tools/src/Widgets/my_drawe_header.dart';
import 'package:my_tools/src/utils/drawer_items.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) cIndex;
  const MyDrawer({Key? key, required this.cIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   List<MyItems> items = DrawerItems().items;


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
          ListView.builder(
            physics:  const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, i){
              return ListTile(
                dense: true,
                horizontalTitleGap: 8.0,
                minLeadingWidth: 10.0,
                leading: Icon(items[i].icon, size: 35.0,),
                title: Text(items[i].title),
                subtitle: Text(items[i].subtitle),
                trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 20.0,),
                onTap: (){
                  cIndex(i);
                  Navigator.pop(context);
                },
              );
            }
          ),
        ],
      ),
    );
  }
}


class MyItems {
  String title;
  IconData icon;
  String subtitle;
  Widget route;

  MyItems({required this.title, required this.icon, required this.subtitle, required this.route});

}
