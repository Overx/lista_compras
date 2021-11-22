import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeftBar extends StatelessWidget {
  final zoomDrawerController;
  const LeftBar({Key? key, this.zoomDrawerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu_black.svg"),
        onPressed: () => zoomDrawerController.toggle(),
      ),
    );
  }
}
