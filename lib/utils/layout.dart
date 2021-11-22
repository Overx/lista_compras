import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:lista_compras/helper.dart';
import 'package:lista_compras/utils/left_bar.dart';
import 'package:lista_compras/views/menu_screen.dart';
import 'color_palette.dart';



class Layout extends StatefulWidget {
  final Widget content;

  const Layout({Key? key, required this.content}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final _drawerController = ZoomDrawerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Map<int, String> pages = Map();
    pages[0] = "/";
    pages[1] = "/about";
    pages[2] = "/setting";

    return ZoomDrawer(
      controller: _drawerController,
      style: DrawerStyle.Style1,
      menuScreen: const MenuScreen(),
      mainScreen: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: LeftBar(
            zoomDrawerController: _drawerController,
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          child: BottomNavyBar(
            showElevation: false,
            itemCornerRadius: 20,
            curve: Curves.easeIn,
            selectedIndex: Helper.currentIndex,
            onItemSelected: (index) {
              setState(() {
                Helper.currentIndex = index;
              });
              Navigator.of(context).pushReplacementNamed(pages[index]!);
            },
            items: [
              BottomNavyBarItem(
                title: const Text('Visão Geral'),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    LineariconsFree.home,
                    size: 20,
                  ),
                ),
                activeColor: ColorPalette.primaryColor,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: const Text('Sobre'),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    LineariconsFree.question_circle,
                    size: 20,
                  ),
                ),
                activeColor: ColorPalette.primaryColor,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: const Text('Definições'),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    LineariconsFree.cog_2,
                    size: 20,
                  ),
                ),
                activeColor: ColorPalette.primaryColor,
                inactiveColor: Colors.black,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        body: widget.content,
      ),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      openCurve: Curves.fastOutSlowIn,
      //closeCurve: Curves.bounceIn,
    );
  }
}

