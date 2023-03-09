import 'package:flutter/material.dart';
import 'package:my_tools/src/Pages/local_image.dart';
import 'package:my_tools/src/Pages/my_gridview.dart';
import 'package:my_tools/src/Pages/my_pageview.dart';
import 'package:my_tools/src/Pages/my_slider.dart';
import 'package:my_tools/src/Widgets/my_drawer.dart';


class DrawerItems {

  List<MyItems> items = [
    MyItems(title: "Local Image", icon: Icons.image_aspect_ratio, subtitle: "Abrir Imagen Local", route: const LocalImage()),
    MyItems(title: "PageView", icon: Icons.pages_outlined, subtitle: "Vista de Paginas", route: const MyPageView()),
    MyItems(title: "GridView", icon: Icons.grid_4x4, subtitle: "Vista de cuadros", route: const MyGridView()),
    MyItems(title: "Slider", icon: Icons.circle, subtitle: "Vista de Arrastrar", route: const MySlider()),
  ];
}