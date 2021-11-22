import 'package:flutter/material.dart';
import 'package:lista_compras/utils/color_palette.dart';
import 'package:lista_compras/views/home.dart';
import 'package:lista_compras/views/pages/about_page.dart';
import 'package:lista_compras/views/pages/home_page.dart';
import 'package:lista_compras/views/pages/setting_page.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/about":
        return MaterialPageRoute(builder: (_) => AboutPage());
      case "/setting":
        return MaterialPageRoute(builder: (_) => SettingPage());
    }

    return _errorRoute();
  }

  static  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        appBar: AppBar(title: Text("Tela não encontrada!"),),
        body: const Center(
          child: Text("404 - Pagina não encontrada!"),
        ),
      );
    });
  }

}