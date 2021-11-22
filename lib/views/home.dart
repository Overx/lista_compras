import 'package:flutter/material.dart';
import 'package:lista_compras/utils/responsive.dart';
import 'package:lista_compras/views/home_web.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeWeb(),
      tablet: HomeWeb(),
      web: HomeWeb(),
    );
  }
}
