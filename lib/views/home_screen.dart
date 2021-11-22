import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lista_compras/utils/color_palette.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class HomeScreen extends StatefulWidget {
  final zoomDrawerController;

  const HomeScreen({Key? key, this.zoomDrawerController}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu_black.svg"),
          onPressed: () => widget.zoomDrawerController.toggle(),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 10),
        child: BottomNavyBar(
          showElevation: false,
          itemCornerRadius: 20,
          curve: Curves.easeIn,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
              //Navigator.of(context).pushNamed(pages[index]);
            });
          },
          items: [
            BottomNavyBarItem(
              title: const Text('Visão Geral'),
              icon: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(LineariconsFree.home, size: 20,),
              ),
              activeColor: ColorPalette.primaryColor,
              inactiveColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              title: const Text('Definições'),
              icon: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(LineariconsFree.cog_2, size: 20,),
              ),
              activeColor: ColorPalette.primaryColor,
              inactiveColor: Colors.black,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      body: Container(
        child: Text("Home"),
      ),
    );
  }
}
