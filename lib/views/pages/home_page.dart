import 'package:flutter/material.dart';
import 'package:lista_compras/utils/layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      content: Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
