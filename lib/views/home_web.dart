import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lista_compras/views/home_screen.dart';

import 'menu_screen.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        style: DrawerStyle.Style1,
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen( zoomDrawerController: drawerController),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.grey[300]!,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        //closeCurve: Curves.bounceIn,
      ),
    );
  }
}
