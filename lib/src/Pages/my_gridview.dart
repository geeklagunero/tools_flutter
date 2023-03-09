import 'package:flutter/material.dart';
import 'package:my_tools/src/utils/images_list.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> gridList = ImagesList().imagesList;


    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: gridList.length,
        itemBuilder: (context, i){
          return Image(
            fit: BoxFit.cover,
              image: NetworkImage(gridList[i])
          );
        },
    );
  }
}
