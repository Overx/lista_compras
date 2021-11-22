import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:lista_compras/utils/color_palette.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg',
                    ),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 15,),
                  Text("John Wick", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: const [
                    Icon(Octicons.home, size: 20, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Visão Geral", style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
            const SizedBox( height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: const [
                    Icon(Typicons.th_large_outline, size: 18, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Minha Lista", style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
            const SizedBox( height: 10,),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: const [
                    Icon(Icons.logout, color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Sair", style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
