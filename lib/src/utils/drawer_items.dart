import 'package:flutter/material.dart';
import 'package:my_tools/src/Widgets/my_drawer.dart';


class DrawerItems {

  List<MyItems> items = [
    MyItems(title: "Local Image", icon: Icons.image_aspect_ratio, subtitle: "Abrir Imagen Local"),
    MyItems(title: "GridView", icon: Icons.grid_4x4, subtitle: "Vista de cuadros"),
  ];
}